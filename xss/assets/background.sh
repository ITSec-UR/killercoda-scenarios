#!/bin/bash

# XSS, Cookie Hijacking and CSRF Webpages
SOURCE="https://gitlab.itsec.ur.de/itsec/uebung/xss/-/archive/main/xss-main.zip"

INSTALL_PATH="/opt/containerd"
NAME="${INSTALL_PATH}/xss"
CONTAINER_NAME_WEB_1="web-battleship"
CONTAINER_NAME_WEB_2="web-skyballoon"
CONTAINER_NAME_WEB_3="web-attacker"
CONTAINER_NAME_DB="db-xss"
CONTAINER_NAME_SOLUTION="solution-xss"

if [ ! -d "$INSTALL_PATH" ]; then
  mkdir -p "$INSTALL_PATH"
fi

curl -o "${INSTALL_PATH}/xss.zip" "$SOURCE"
unzip -d "${NAME}" "${INSTALL_PATH}/xss.zip"
rm -rf "${INSTALL_PATH}/xss.zip"
docker-compose -f "${NAME}"/*/docker-compose.yml up -d

# install requited packages
DEBIAN_FRONTEND=noninteractive apt-get install -y -qq tshark

# check if containers are running
until [[  ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_1`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_2`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_3`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_DB`" == "true")
 ]]; do
   sleep 0.1;
done;

# set permissions of docker containers
docker exec web-skyballoon chown www-data:www-data /tmp/sess_75639f6c2bcf4f8a4e753b486e288f65
docker exec web-skyballoon chmod 777 /tmp
docker exec web-attacker chown www-data:www-data /var/www/html

# solution web
docker-compose -f "${NAME}"/*/quiz-solution/docker-compose.yml up -d
until [[ "`docker inspect -f {{.State.Running}} $CONTAINER_NAME_SOLUTION`" == "true" ]]; do
   sleep 0.1;
done;

touch /tmp/.killercoda-finished

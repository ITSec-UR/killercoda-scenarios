#!/bin/bash

# XSS, Cookie Hijacking and CSRF Webpages
SOURCE="https://gitlab.itsec.ur.de/itsec/uebung/xss-battleship/-/archive/main/xss-battleship-main.zip"
SOURCE2="https://gitlab.itsec.ur.de/itsec/uebung/xss-highlight/-/archive/main/xss-highlight-main.zip"

INSTALL_PATH="/opt/containered"
NAME="${INSTALL_PATH}/xss-battleship"
NAME2="${INSTALL_PATH}/xss-highlight"
CONTAINER_NAME_WEB_1="web-battleship"
CONTAINER_NAME_WEB_2="web-highlight"
CONTAINER_NAME_WEB_3="web-attacker"
CONTAINER_NAME_DB="db-xss"
CONTAINER_NAME_SOLUTION="solution-xss"

if [ ! -d "$INSTALL_PATH" ]; then
  mkdir -p $INSTALL_PATH
fi

curl -o "${INSTALL_PATH}/xss-battleship.zip" "$SOURCE"
unzip -d ${NAME} "${INSTALL_PATH}/xss-battleship.zip"
rm -rf "${INSTALL_PATH}/xss-battleship.zip"
docker-compose -f ${NAME}/*/docker-compose.yml up -d

curl -o "${INSTALL_PATH}/xss-highlight.zip" "$SOURCE2"
unzip -d ${NAME2} "${INSTALL_PATH}/xss-highlight.zip"
rm -rf "${INSTALL_PATH}/xss-highlight.zip"
docker-compose -f ${NAME2}/*/docker-compose.yml up -d

# check if containers are running
until [[  ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_1`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_2`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_3`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_DB`" == "true")
 ]]; do
   sleep 0.1;
done;

# solution web
docker-compose -f "${NAME}/*/quiz-solution/docker-compose.yml" up -d
until [[ "`docker inspect -f {{.State.Running}} $CONTAINER_NAME_SOLUTION`" == "true" ]]; do
   sleep 0.1;
done;

rm -- "$0"

echo "done" >> /root/.killercoda-finished
#!/bin/bash

# SQL-Injection Webpages
SOURCE="https://gitlab.itsec.ur.de/itsec/uebung/sql-injection/-/archive/main/sql-injection-main.zip"

INSTALL_PATH="/opt/containerd"
NAME="${INSTALL_PATH}/sql-injection"
CONTAINER_NAME_WEB_1="web1"
CONTAINER_NAME_WEB_2="web2"
CONTAINER_NAME_WEB_3="web3"
CONTAINER_NAME_DB="db"
CONTAINER_NAME_SOLUTION="solution-sql-injection"

if [ ! -d "$INSTALL_PATH" ]; then
  mkdir -p "$INSTALL_PATH"
fi

curl -o "${INSTALL_PATH}/sql-injection.zip" "$SOURCE"
unzip -d "${NAME}" "${INSTALL_PATH}/sql-injection.zip"
rm -rf "${INSTALL_PATH}/sql-injection.zip"
docker-compose -f "${NAME}"/*/docker-compose.yml up -d

# check if containers are running
until [[  ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_1`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_2`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_3`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_DB`" == "true")
 ]]; do
   sleep 0.1;
done;

# solution web
docker-compose -f "${NAME}"/*/quiz-solution/docker-compose.yml up -d
until [[ "`docker inspect -f {{.State.Running}} $CONTAINER_NAME_SOLUTION`" == "true" ]]; do
   sleep 0.1;
done;

touch /tmp/.killercoda-finished

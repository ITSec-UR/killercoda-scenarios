#!/bin/bash

SOURCE="https://gitlab.itsec.ur.de/itsec/uebung/sql-injection/-/archive/main/sql-injection-main.zip"

INSTALL_PATH="/opt/containerd"
NAME="${INSTALL_PATH}/sql-injection"
CONTAINER_NAME_WEB_1="sql-injection-web1-1"
CONTAINER_NAME_WEB_2="sql-injection-web2-1"
CONTAINER_NAME_WEB_3="sql-injection-web3-1"
CONTAINER_NAME_DB="db"

if [ ! -d "$INSTALL_PATH" ]; then
  mkdir -p $INSTALL_PATH
fi

curl -o "${INSTALL_PATH}/sql-injection.zip" "$SOURCE"
unzip -d ${NAME} "${INSTALL_PATH}/sql-injection.zip"
rm -rf "${INSTALL_PATH}/sql-injection.zip"
docker-compose -f ${NAME}/*/*/docker-compose.yml up -d

# check if containers are running
until [[  ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_1`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_2`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_WEB_3`" == "true") &&
          ("`docker inspect -f {{.State.Running}} $CONTAINER_NAME_DB`" == "true")
 ]]; do
   sleep 0.1;
done;

rm -- "$0"

echo "done" >> /root/.katacoda-finished
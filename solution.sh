#!/bin/bash

INSTALL_PATH="/opt/containered"
NAME="${INSTALL_PATH}/solution-web"
CONTAINER_NAME="web-solution"

if [ ! -d "$INSTALL_PATH" ]; then
  mkdir -p $INSTALL_PATH
fi

if [ ! -n "$1" ]; then
  echo "URL is needed as the first parameter!"
  exit 1
fi

curl -o "${INSTALL_PATH}/solution.zip" "$1"
unzip -d ${NAME} "${INSTALL_PATH}/solution.zip"
rm -rf "${INSTALL_PATH}/solution.zip"
docker-compose -f ${NAME}/*/*/docker-compose.yml up -d

# check if container is running
until [[ "`docker inspect -f {{.State.Running}} $CONTAINER_NAME`" == "true" ]]; do
   sleep 0.1;
done;

rm -- "$0"

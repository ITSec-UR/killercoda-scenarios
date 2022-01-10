#!/bin/bash

DIR="/opt/containerd"
NAME="${DIR}/solution-web"

if [ ! -n "$1" ]; then
  echo "URL is needed as the first parameter!"
  exit 1
fi

curl -o "${DIR}/solution.zip" "$1"
unzip -d ${NAME} "${DIR}/solution.zip"
rm -rf "${DIR}/solution.zip"
docker-compose -f ${NAME}/*/katacoda-quiz-solution/docker-compose.yml up -d
rm -- "$0"
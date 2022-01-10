#!/bin/bash

DIRNAME="solution-web"

if [ ! -n "$1" ]; then
  echo "URL is needed as the first parameter!"
  exit 1
fi

curl -o solution.zip "$1"
unzip -d solution-web solution.zip
rm -rf solution.zip
docker-compose -f ${DIRNAME}/*/katacoda-quiz-solution/docker-compose.yml up -d
rm -- "$0"
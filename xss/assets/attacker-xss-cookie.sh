#!/bin/bash

INSTALL_PATH="/opt/containerd"
NAME="${INSTALL_PATH}/xss"
DIRECTORY="web-attacker"

ACTUAL_PATH="${NAME}/*/web/${DIRECTORY}/xss-cookie.php"
SYMLINK_PATH="/${DIRECTORY_NAME}/xss-cookie.php"

if [ ! -d "/${DIRECTORY}" ]; then
  mkdir "${DIRECTORY}"
fi

ln -s "$ACTUAL_PATH" "$SYMLINK_PATH"
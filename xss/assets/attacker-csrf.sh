#!/bin/bash

INSTALL_PATH="/opt/containerd"
CSRF="${INSTALL_PATH}"/xss/*/web/web-attacker/csrf.php

mkdir -p "/root/web-attacker/"
ln -sf $CSRF "/root/web-attacker/"
rm -- "$0"
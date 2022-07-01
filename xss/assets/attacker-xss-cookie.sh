#!/bin/bash

INSTALL_PATH="/opt/containerd"
XSS_COOKIE="${INSTALL_PATH}"/xss/*/web/web-attacker/xss-cookie.php

mkdir -p "/root/web-attacker/"
ln -sf $XSS_COOKIE "/root/web-attacker/"
rm -- "$0"
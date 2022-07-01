#!/bin/bash

INSTALL_PATH="/opt/containerd"
XSS_IFRAME="${INSTALL_PATH}"/xss/*/web/web-attacker/xss-iframe.php

mkdir -p "/root/web-attacker/"
ln -sf $XSS_IFRAME "/root/web-attacker/"
rm -- "$0"
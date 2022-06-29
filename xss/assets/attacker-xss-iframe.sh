#!/bin/bash

INSTALL_PATH="/opt/containerd"
XSS_IFRAME="${INSTALL_PATH}"/xss/*/web/web-attacker/xss-iframe.php

ln -s "$XSS_IFRAME" /root/web-attacker

#!/bin/bash

INSTALL_PATH="/opt/containerd"
XSS_COOKIE="${INSTALL_PATH}"/xss/*/web/web-attacker/xss-cookie.php

ln -s "$XSS_COOKIE" /root/web-attacker

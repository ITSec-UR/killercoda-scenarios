#!/bin/bash

INSTALL_PATH="/opt/containerd"
CSRF="${INSTALL_PATH}"/xss/*/web/web-attacker/csrf.php

ln -s "$CSRF" /root/

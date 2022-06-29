#!/bin/bash

INSTALL_PATH="/opt/containerd"
FAKE_LOGIN="${INSTALL_PATH}"/xss/*/web/web-attacker/fake-login.php

ln -s "$FAKE_LOGIN" /root/web-attacker

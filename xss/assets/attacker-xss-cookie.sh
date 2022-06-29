#!/bin/bash

ACTUAL_PATH=/opt/containerd/xss/*/web/$web-attacker/xss-cookie.php
SYMLINK_PATH=/web-attacker/xss-cookie.php

ln -s $ACTUAL_PATH $SYMLINK_PATH
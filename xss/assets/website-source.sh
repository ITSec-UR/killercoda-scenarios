#!/bin/bash

INSTALL_PATH="/opt/containerd"
HIGHLIGHT="${INSTALL_PATH}"/xss/*/web/web-highlight

ln -s -T "$HIGHLIGHT" /root/web-highlight

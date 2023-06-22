#!/bin/bash

SKYBALLON=/opt/containerd/xss/*/web/web-skyballoon
HIGHLIGHT_LINK=/root/web-skyballoon

if [ ! -L ${ATTACK_LINK} ] ; then
    # Add sym link
    ln -s -T $SKYBALLON $HIGHLIGHT_LINK
fi

rm -- "$0"

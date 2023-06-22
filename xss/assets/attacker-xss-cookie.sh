#!/bin/bash

ATTACKER_FOLDER=/opt/containerd/xss/*/web/web-attacker
ATTACK_LINK="/root/web-attacker/"

if [ ! -L ${ATTACK_LINK} ] ; then
    # Add sym link
    ln -s -T $ATTACKER_FOLDER $ATTACK_LINK
fi

echo "<?php\n// This website should save cookies which are sent via the URL parameters to a file" > "${ATTACK_LINK}/xss-cookie.php"
rm -- "$0"

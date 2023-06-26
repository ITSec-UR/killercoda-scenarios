#!/bin/bash

ATTACKER_FOLDER=/opt/containerd/xss/*/web/web-attacker
ATTACK_LINK=/root/web-attacker

if [ ! -L ${ATTACK_LINK} ] ; then
    # Add sym link
    ln -s -T $ATTACKER_FOLDER $ATTACK_LINK
fi

echo -e "<?php\n// <?php\n// This website should send a post request to SkyBalloon website in order to add a new highlight\n// by using the visitor's active and authenticated session (cross site request forgery)" > "${ATTACK_LINK}/csrf.php"
rm -- "$0"

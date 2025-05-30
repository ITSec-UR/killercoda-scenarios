#!/bin/bash

ATTACKER_FOLDER=/opt/containerd/xss/*/web/web-attacker
ATTACK_LINK=/root/web-attacker

if [ ! -L ${ATTACK_LINK} ] ; then
    # Add sym link
    ln -s -T $ATTACKER_FOLDER $ATTACK_LINK
fi

echo -e "<?php\n// This website should be embedded into the original website using XSS (iframe)\n// (1) Spoof original SkyBallon login window (copy html code, fix link issues)\n// (2) Phish login data and save the credentials to a file" > "${ATTACK_LINK}/fake-login.php"
echo -e "<?php\n// This website has the attacking payload to embed an iframe of the fake-login.php into the original website\n// by exploiting the unsafe error message output in the SkyBalloon login window" > "${ATTACK_LINK}/xss-iframe.php"

#!/bin/bash
k="topsecret"                               # secret symmetric key
export m1="bus=1"                           # original message
export mac_m1=$(echo -n $k$m1 | sha1sum)    # original mac h(k||m1)
export pad="8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070"                      
export m2="&bus=50"                         # extended message
unset k                                     # unset secret key, so students don't have access to variable while acting as attacker
bash                                        # hide command history
clear
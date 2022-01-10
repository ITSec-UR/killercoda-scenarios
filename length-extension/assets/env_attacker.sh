#!/bin/bash

k="topsecret"                                       # secret symmetric key
m1="bus=1"                                          # original message
mac1=$(echo -n $k$m1 | sha1sum | awk '{print $1}')  # original mac h(k||m1)
pad="8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070"

echo m1="$m1" >> /root/.environment
echo mac1="$mac1" >> /root/.environment
echo pad="$pad" >> /root/.environment

wget https://gitlab.itsec.ur.de/itsec/uebung/length-extension/raw/master/sha1.py

apt-get install -y ascii

# solution
curl -o .solution.sh https://gitlab.itsec.ur.de/itsec/uebung/katacoda-scenarios/-/raw/main/solution.sh
bash .solution.sh https://gitlab.itsec.ur.de/itsec/uebung/length-extension/-/archive/master/length-extension-master.zip?path=katacoda-quiz-solution

echo "done" >> /root/.katacoda-finished
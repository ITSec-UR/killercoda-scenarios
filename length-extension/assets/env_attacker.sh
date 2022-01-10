#!/bin/bash

k="topsecret"                                                 # secret symmetric key

declare -A env
env[m1]="bus=1"                                               # original message
env[mac1]=$(echo -n $k$env[m1] | sha1sum | awk '{print $1}')  # original mac h(k||m1)
env[pad]="8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000070"

for i in "${!env[@]}"
do
   echo "export $i="'"'${env[$i]}'"' >> /root/.environment
done

echo 'source /root/.environment' >> /root/.bashrc


wget https://gitlab.itsec.ur.de/itsec/uebung/length-extension/raw/master/sha1.py

apt-get install -y ascii

# solution
curl -o .solution.sh https://gitlab.itsec.ur.de/itsec/uebung/katacoda-scenarios/-/raw/main/solution.sh
bash .solution.sh https://gitlab.itsec.ur.de/itsec/uebung/length-extension/-/archive/master/length-extension-master.zip?path=katacoda-quiz-solution

echo "done" >> /root/.katacoda-finished
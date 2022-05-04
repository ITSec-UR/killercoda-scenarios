#!/bin/bash

declare -A env
env[sig]="bus=1"

for i in "${!env[@]}"
do
   echo "export $i="'"'${env[$i]}'"' >> /root/.environment
done

echo 'source /root/.environment' >> /root/.bashrc

echo "done" >> /root/.katacoda-finished
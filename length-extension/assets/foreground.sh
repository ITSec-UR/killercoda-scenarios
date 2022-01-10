counter=0
while [ "$counter" -lt 5] && [ $? -ne 127]
do
   progress.sh
   sleep 1
done
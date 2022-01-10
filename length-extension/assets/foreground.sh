counter=0
while [ "$counter" -lt 5] && [ $? -eq 127]
do
   ((counter+=1))
   progress.sh
   sleep 1
done
sleep 1
counter=0
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   history -c
   progress.sh
   if [ $? -ne 127 ] ; then break; else sleep 1 ; fi
done
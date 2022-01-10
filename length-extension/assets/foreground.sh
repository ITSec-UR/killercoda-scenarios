sleep 1
counter=0
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   progress.sh
   if [ $? -ne 127 ] ; then break; else sleep 1 ; fi
done
source /root/.environment
echo clear >> .fin.sh
echo 'echo Configured' >> .fin.sh
echo 'rm -- "$0"' >> .fin.sh
chmod +x .fin.sh
history -c
./.fin.sh
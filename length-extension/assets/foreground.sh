sleep 1
counter=0
timeout_time=90
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   #progress.sh
   timeout $timeout_time wait.sh
   exit_code=$?
   if [ $exit_code -ne 127 ] ; then break; else sleep 1 ; fi
   
done
source /root/.environment
echo clear >> .clean.sh
echo 'if [ $exit_code -eq 124 ] ; then echo "Timeout ($timeout_time): Configuring" ; else echo Configured' >> .clean.sh
echo 'rm -- "$0"' >> .clean.sh
cat /dev/null > ~/.bash_history && history -c
bash .clean.sh
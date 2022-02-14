sleep 1
counter=0
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   progress.sh
   if [ $? -ne 127 ] ; then break; else sleep 1 ; fi
done
source /root/.environment
echo clear >> .clean.sh
echo 'echo Configured' >> .clean.sh
echo 'rm -- "$0"' >> .clean.sh
cat /dev/null > ~/.bash_history && history -c
bash .clean.sh
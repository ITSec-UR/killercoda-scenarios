sleep 1
counter=0
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   timeout 120 wait.sh
   exit_code=$?
   if [ "$exit_code" -eq 124 ] ; then export is_timeout="true"; fi
   if [ "$exit_code" -ne 127 ] ; then break; else sleep 1 ; fi
   
done
unset counter
unset exit_code
source /root/.environment
echo clear >> .clean.sh
echo 'if [[ "$is_timeout" == "true" ]]; then echo -e "Timeout (120s): Configuring\nYou have two options:\n  (a) Try to reload this scenario or come back later.\n  (b) Go on. Most functions should work anyway."; else echo Configured; fi' >> .clean.sh
echo 'rm -- "$0"' >> .clean.sh
cat /dev/null > ~/.bash_history && history -c
bash .clean.sh
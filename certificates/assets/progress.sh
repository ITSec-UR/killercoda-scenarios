timeout 60 wait.sh
if [ $? -eq 124 ]
then
   echo "Timeout (60s): Configuring"
fi
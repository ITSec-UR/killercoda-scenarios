sleep 1
counter=0
while [ "$counter" -lt 5 ] ; do
   ((counter+=1))
   progress.sh
   if [ $? -ne 127 ] ; then break; else sleep 1 ; fi
done
source /root/.environment
cat > .fin.sh<<EOF
clear
printf "    \b\b\b\b"
echo ""
echo "Configured"
rm -- "\$0"
EOF
history -c
bash .fin.sh
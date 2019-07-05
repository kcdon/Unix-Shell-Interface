clear
echo "           SYSTEM STATUS COMMANDS"
echo -e "\n"
echo -e "\n"

echo "   1 -- Display current date and time"
echo "   2 -- Current disk usage"
echo "   3 -- List current local and environmental"
echo "   4 -- Display process status information  "
echo "   5 -- Exit program"
echo -e "\n"
breaker=1
while [ "$breaker" -eq 1 ]
do
echo -n "        Enter your choice:"
read input

if [[ $input -eq 5 ]] ; then
clear
breaker=2
exit 0
fi


if [[ $input -eq 1 ]] ; then
echo -n "DATE : "
date "+%d / %m / %Y"
echo -n  "TIME : "
date "+%I : %M : %S"
fi


if [[ $input -eq 4 ]] ; then
ps
fi


if [[ $input -eq 2 ]] ; then
df -h
fi

if [[ $input -eq 3 ]] ; then
printenv > t.txt
more t.txt
fi
done

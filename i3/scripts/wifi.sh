name=`iwconfig wlp2s0 | grep ESSID | awk '{print $4}' | tr -d 'ESSID:"'`
if [ $name != "off/any" ]
then
	echo " " $name
else
	echo " OFF"
fi

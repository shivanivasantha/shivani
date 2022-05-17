if [ $# -eq 1 ]
then
	user=`who | grep -woi "$1"`
	if [ $? -eq 0 ]
	then
		if [ "$user" = `whoami` ]
		then
		    currentHour=`date +%H`
		    currentMinute=`date +%M`
		    currentUser=`whoami`
		    set -- `who | grep $currentUser`
		    set -- `echo $4 | tr ":" " "`
		    loginHour=$1
		    loginMinute=$2
		    hours=`expr $currentHour - $loginHour`
		    minute=`expr $currentMinute - $loginMinute`
		        if [ $minute -lt 0 ]
		        then
		        minute=`expr $minute + ($minute*(-2))`
		        fi
		echo the user `whoami` working time is $hours hours $minute minute
		fi 
	else
	echo $user not logged in
	fi
else 
echo $user does not exists
fi


	

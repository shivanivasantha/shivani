if [ $# -eq 1 ]
then
grep $1 /etc/passwd >ud
if [ $? -eq 0 ]
then
echo "User Exits"
h=`cut -d ":" -f 6 ud`
echo "home directory $1 in $h"
else
echo "user not found"
fi
else
echo "Enter a login/user nmae"
fi


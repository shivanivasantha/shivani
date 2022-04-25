if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -Rl $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9 - | sort -n | tail -l`
echo "file name is: $2"
echo "file size is: $1"
else
echo "Not a Directory"
fi
else
echo "Enter the directory name :"
fi


if [ -e $1 ]
then
set -- `ls -ld $1`
echo file permission are:$1
echo file link count:$2
echo file user:$3
echo file group:$4
echo file size:$5
echo file created at:$6 $7 $8
echo file name $9
else
echo "file does not exit"
fi

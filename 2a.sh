echo "enter the first file "
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo "file doesnt exits"
exit
fi

echo "enter the second file "
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
else
echo "file doesnt exits"
exit
fi

if [ $file1perm = $file2perm ]
then
echo "the file permission is identical"
echo "the file permission is $file1perm"
else
echo "the file permission is not identical"
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi

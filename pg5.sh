echo enter filename
read file
if [ -e $file ]
then
set -- `ls  -ld $file`
echo "$file craeted at $6 $7 $8"
else
echo "file doesn't exist"
fi
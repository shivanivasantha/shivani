for i in `ls`
do
fl=`expr lenght $i`
if [ $fl -ge 10 ]
then
echo $i
else
echo "file name not greater then 10 character "
fi
done


eco -n"enter the first file name"
read f1
if [-e $f1 ]
then
 set --`ls -ld $f1`
 file1permt=$1
 else
  echo "file dose not exist"
  exit
fi
eco -n"enter the  secound file name"
read f2
if [-e $f2 ]
then
 set --`ls -ld $f1`
 file2permt=$1
 else
  echo "file dose not exist"
  exit
fi
if [ $file1permt = $file2ppermt ]
 then 
   echo "file permission are identical "
   echo " permission is $file1permt"
   else
   echo " filepermission are not identical"
   echo "$f1 permission is $file1permt"
   echo "$f2 permission is $file2permt"
 fi




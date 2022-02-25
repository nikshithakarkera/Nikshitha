#5a.Write a shellscript that accepts as filename as argument and display its 
#creation time if file exist and it doesnot send output error message.
echo -n "enter the filename:"
read filename
if [ -e $filename ]
then 
set -- `ls -ld $filename`
echo "The creation time of $filename is $6 $7 $8"
else
echo "File doesnt exist"
fi

#4a.Write a shellscript that accept one or more filenames asargument and convert all of them to
#uppercase,provided they exist in current directory. 
for i in $*
do
if [ -f $1 ]
then
echo "-------------$i contents are--------------"
cat $i | tr "[a-z]" "[A-Z]"
echo "________________________________________________"
else
echo "$i doesnt exist"
fi
done

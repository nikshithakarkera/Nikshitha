#2a.Write a shellscript that accepts two filenames as arguments,checks if the permissions for 
#these files are identical and if the permissions are identical,output common permissions
#and otherwise output each filename followed by its permissions.
echo -n "enter the first file:"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo "File doesnt exist"
exit
fi
echo -n "enter the second file:"
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
fi
if [ "$file1perm" = "$file2perm" ]
then
echo "File permissions are identical"
echo "Permission is $file1perm"
else
echo "File permission are not identical"
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi

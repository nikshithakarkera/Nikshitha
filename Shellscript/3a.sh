if [ -e $1 ]
then
set -- `ls -ld $1`
echo "Permissions are: $1"
echo "File count is: $2"
echo "File user: $3"
echo "File group: $4"
echo "File size: $5"
echo "File modification is done on: $6 at $7"
echo "File name: $8"
else
echo "File does not exists"
fi  

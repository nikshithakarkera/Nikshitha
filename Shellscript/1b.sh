#1b.Write a shellscript that accepts a pathname and creates all the components in that pathname as directories.
#For example, if the scriptis named mpc,then the command mpc a/b/c/d should create directories a,a/b,a/b/c,a/b/c/d. 

if [ $# -ne 0 ]
then
p=`echo $1 | tr "/" " "`
for i in $p
do
mkdir $i
cd $i
done
echo "all the directories created"
else
echo "please enter a parameter"
fi

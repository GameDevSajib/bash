#!/BISMILLAH
echo "Type the name of your directory you want to create" 
read -p " " MyDir
mkdir -p "$MyDir"
if test -d "$MyDir";then
echo $MyDir " sucessfully created a directory"
read -p "Enter the file name you want to create " MyFile
touch $MyFile
mv *.sh  $MyDir
echo "All .sh file will be moved to MyDir folder"
fi


# Created by Keegan Donley


if (("$#" < 1))
then
	echo "Usage:"
	echo "Please enter a program file"
	echo "========== Files =========="
	ls
	echo " "
	exit 1
fi



echo " "
# Compile the file specified by the user
g++ $1 &> err
echo "==================== Compiler Errors ====================="
cat err
echo "======================== Done ============================"
echo " "
echo "======================= Input 1 =========================="
echo "This line should expalain what the expected output is for input set #1 "
./a.out < input1
echo " "
echo "======================= Input 2 =========================="
echo "This line should explain what the expected output is for input set #2 "
echo " "
./a.out < input2
read -p "Press enter to open file" enter
open $1


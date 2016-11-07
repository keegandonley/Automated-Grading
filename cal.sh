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
echo "This should be a leap year with 29 days in February, starting on a Tuesday "
./a.out < input1
echo " "
echo "======================= Input 2 =========================="
echo "This should be a non-leap year with 28 days in February, starting on a Wednesday "
echo " "
./a.out < input2
read -p "Press enter to open file" enter
open $1


# Created by Keegan Donley
# Works to grade simple, single-file c++ programs
# Finds differences between expected and actual output, as
# well as any compiler errors or warnings that are generated

# Files generated are:
# + <studentfilename>+err.txt
# + <studentfilename>+diff.txt

# Arguments - 
# + Directory - this is the directory containing the submission files
# + Correct Output - this is a txt file containing what the output should be
# + (Optional) Input - This is a txt file containing space-delimited
# 			input for the program being tested


if (("$#" < 2))
then
	echo "Usage:"
	echo "Please enter a directory to search"
	echo "Please enter a correct output txt file"
	echo "Optional: please enter an input txt file"
	exit 1
fi



echo " "
echo "+ Entering directory $1..." 
# Enter the directory as defined by the user
cd $1


echo "+ Listing files in $1..."
echo " "
# List the files on-screen in the directory
ls

# Iterate through files that are .cpp files
for file in *.cpp
do
	echo "Compiling $file and writing error file"
	# 1. Compile and output to error file
	g++ $file &> "$file""+err.txt"
	if (("$#" > 2))
	then
		# 2(a). Run using provided input file
		echo "+ Running program with input file $3"
		./a.out < $2 > tempOut.txt
		# Store output for comparison in tempOut.txt
	else
		# 2(b). Run without input file. Use this if the program
		# doesn't take any input
		echo "+ Running program with no input file"
		./a.out > tempOut.txt
		# Store output for comparison in tempOut.txt
	fi
	echo "+ Comparing Diff..."
	# Compare the differences in the generated output
	# and the expected, correct output provided
	# Stores differences in diff file
	diff tempOut.txt $2 > "$file""+diff.txt"
	echo "+ Student diff finished for $file" 
done

# This has some limitations in that student output must match the 
# specification exactly. Also, if the student uses getline(), the 
# space-delimtied input will not work, and will require a slightly 
# different input file.
# Also only works with single-file programs. No good way to compile
# programs with .h files has been implemented.

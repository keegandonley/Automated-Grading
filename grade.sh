#/bin/bash
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
cd $1
echo "+ Listing files in $1..."
echo " "
ls

for file in *.cpp
do
	echo "Compiling $file and writing error file"
	g++ $file &> "$file""+err.txt"
	if (("$#" > 2))
	then
		echo "+ Running program with input file $3"
		./a.out < $2 > tempOut.txt
	else
		echo "+ Running program with no input file"
		./a.out > tempOut.txt
	fi
	echo "+ Comparing Diff..."
	diff tempOut.txt $2 > "$file""+diff.txt"
	echo "+ Student diff finished for $file" 
done


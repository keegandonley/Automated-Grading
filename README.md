# Automated Grading
My automated grading system for C++ programs
<br>
I use this for grading simple C++ assignments for students
<br>
<br>
The file grade.sh takes a directory full of .cpp files, an expected output file, and an optional input file. This one works great when the student's output it required to match a specific set of output, character-for-character. 
<br>
The file general.sh is useful for programs in which output cannot be predicted, such as when using random numbers or the output requirements aren't as strict. It runs using input from files called input1 and input2 in the directory. This means it's less automated but still allows for automatic compiling, running, and opening of files.

### Grade.sh
---
<pre>
./grade.sh [directory] [output_to_match] [optional:input_file]
</pre>

+ Compiles Program
+ Runs it (with or without input file)
+ Checks generated output against output_to_match
+ Generates an error file and diff file for each <em>.cpp</em> program

### General.sh
---
<pre>
./general.sh 
</pre>
Lists all files in the current directory
<pre>
./general.sh [C++ file]
</pre>

+ Compiles Program
+ If needed, prints compiler errors and warnings
+ Prints out the critearia
+ Runs program with file input1
+ Prints output
+ Prints new criteria
+ Runs program with file input2
+ Waits for user to press enter, then opens the C++ file with the default editor

*Note: This is used for programs with unpredictable output or output that is difficult to match automatically. It will not check the output for you, just make it simpler to check the output with multiple sets of input.*

# Automated Grading
My automated grading system for C++ programs
I use this for grading simple C++ assignments for students

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

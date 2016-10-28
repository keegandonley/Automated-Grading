# Automated Grading
My automated grading system for C++ programs
I use this for grading simple C++ assignments for students

<pre>
./grade.sh [directory] [output_to_match] [optional:input_file]
</pre>

+ Compiles Program
+ Runs it (with or without input file)
+ Checks generated output against output_to_match
+ Generates an error file and diff file for each <em>.cpp</em> program

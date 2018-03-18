#!/bin/bash

echo "read with no option"
read var1
echo $var1
echo

echo "read with p option"
read -p 'var1: ' var1
echo $var1
echo

echo "read with sp option"
read -sp 'var1: ' var1
echo $var1
echo

# If there are more items than variable names then the remaining items will all be added to the last variable name.
# If there are less items than variable names then the remaining variable names will be set to blank or null.
echo "read multiple items"
read var1 var2 var3
echo 'var1: '$var1
echo 'var2: '$var2
echo 'var3: '$var3
echo 

#STDIN - /proc/<processID>/fd/0
#STDOUT - /proc/<processID>/fd/1
#STDERR - /proc/<processID>/fd/2

#To make life more convenient the system creates some shortcuts for us:

#STDIN - /dev/stdin or /proc/self/fd/0
#STDOUT - /dev/stdout or /proc/self/fd/1
#STDERR - /dev/stderr or /proc/self/fd/2

#cat the file representing STDIN, cut setting the delimiter to a space, fields 2 and 3 then sort the output.
#cat /dev/stdin | cut -d' ' -f 2,3 | sort

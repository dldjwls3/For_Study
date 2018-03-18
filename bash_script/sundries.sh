#!/bin/bash

echo 'assigning check'
echo 'before a=1: ' $a
a=1
echo 'after a=1: ' $a
echo

echo 'difference between single quotes and double quotes'
myVar='Hello World'
echo 'myVar='\''Hello World'\'
yourVar=$myVar
echo 'yourVar=$myVar -->' 'yourVar:' $yourVar
yourVar='$myVar'
echo 'yourVar='\''$myVar'\' '-->' 'yourVar:' $yourVar
echo

RED='\033[0;31m'
NC='\033[0m'

echo 'command substitution'
echo -e "${RED}When using command substitution, you should know that"
echo -e "All the newlines are stripped out and the output is now all on a single line${NC}"
myVar=$(ls)
echo 'myVar=$(ls)'
echo 'myVar: ' $myVar
echo




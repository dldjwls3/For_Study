#!/bin/bash

filenames=$(ls -p | grep -v /)
result_folder='result_exercise2'
mkdir -p $result_folder
for filename in $filenames
do
	date=$(date)
	new_filename=./${result_folder}/${date}_${filename}.txt
	echo create: \'$new_filename\'
	touch "$new_filename"
 	cat $filename > "$new_filename"
done


#!/bin/bash

dir=$1
dir_final=./formatted_students.txt
#now delete all previous contents of the file using sed
sed -i '/^/d' $dir_final 
#count maintains the count of the line which has been read
count=1
while read p; do
	count=$((count+1))
	#increment count by one since you have read the first line 
	if [ `expr $count % 2` == 0 ]; then
		person_count=$((count/2))
		echo -e -n "$person_count;" >> $dir_final
		#p now contains the name of a person
		echo -e -n "$p;" >> $dir_final
		read p
		#p now contains the roll number of a person
		count=$((count+1))
		echo -e -n "$p;" >> $dir_final
		echo -e -n "$p@iith.ac.in\n" | tr '[:upper:]' '[:lower:]' >> $dir_final
	fi
done <$dir


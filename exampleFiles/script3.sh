#!/bin/bash

dir=./$1
dir_final=./formatted_students.txt
sed -i '/^/d' $dir_final
count=1
while read p; do
	count=$((count+1))
	#echo "$count"
	if [ `expr $count % 2` == 0 ]; then
		person_count=$((count/2))
		echo -e -n "$person_count;" >> $dir_final
		#echo "have the string $p"
		echo -e -n "$p;" >> $dir_final
		read p
		#echo "read the string $p"
		count=$((count+1))
		echo -e -n "$p;" >> $dir_final
		echo -e -n "$p@iith.ac.in\n" | tr '[:upper:]' '[:lower:]' >> $dir_final
	fi
done <$dir


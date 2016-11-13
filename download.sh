#!/bin/bash

rm  combined.out
for i in $(seq 9); do
	filename="20160$i-citibike-tripdata"
	s="http://witestlab.poly.edu/bikes/$filename.zip"
	wget $s
	unzip "$filename.zip"
	mv "$filename.csv" "20160$i.csv"
	newfile="20160$i.csv"
	echo $newfile proceeded!
done

#!/bin/bash

clear

CNT=$(wc -m < $(pwd)/$1)

clear

for i in $(seq 1 $CNT)
do
	CHAR=$(sed "$i!d" $(pwd)/$1)
	if [ "$CHAR" == "#" ] || [ "$CHAR" == "@" ] || [ "$CHAR" == "$" ] || [ "$CHAR" == "+" ] || [ "$CHAR" == "-" ] || [ "$CHAR" == ":" ] || [ "$CHAR" == ";" ] || [ "$CHAR" == "." ] || [ "$CHAR" == "&" ]
	then
		echo -n ""
	else
		echo -n "$CHAR" >> $(pwd)/decrypt.txt
	fi
done

clear

showhex $(cat $(pwd)/decrypt.txt) > $(pwd)/decrypt.txt

clear

gedit $(pwd)/decrypt.txt &

clear


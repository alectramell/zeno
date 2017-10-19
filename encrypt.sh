#!/bin/bash

if [ -e $(pwd)/o3.log ]
then
	clear
	rm $(pwd)/o3.log
	clear
	for i in $(seq 1 1)
	do
		clear
		X=$(echo $((1 + RANDOM % 9)))
		clear
		if [ $X = 1 ]
		then
			echo -n "#" >> $(pwd)/o3.log

		elif [ $X = 2 ]
		then
			echo -n "@" >> $(pwd)/o3.log

		elif [ $X = 3 ]
		then
			echo -n "$" >> $(pwd)/o3.log

		elif [ $X = 4 ]
		then
			echo -n "&" >> $(pwd)/o3.log

		elif [ $X = 5 ]
		then
			echo -n "+" >> $(pwd)/o3.log

		elif [ $X = 6 ]
		then
			echo -n "-" >> $(pwd)/o3.log

		elif [ $X = 7 ]
		then
			echo -n ":" >> $(pwd)/o3.log

		elif [ $X = 8 ]
		then
			echo -n ";" >> $(pwd)/o3.log

		elif [ $X = 9 ]
		then
			echo -n "." >> $(pwd)/o3.log
		else
			echo -n "0" >> $(pwd)/o3.log
		fi
		clear
	done
else
	for i in $(seq 1 1)
	do
		clear
		X=$(echo $((1 + RANDOM % 9)))
		clear
		if [ $X = 1 ]
		then
			echo -n "#" >> $(pwd)/o3.log

		elif [ $X = 2 ]
		then
			echo -n "@" >> $(pwd)/o3.log

		elif [ $X = 3 ]
		then
			echo -n "$" >> $(pwd)/o3.log

		elif [ $X = 4 ]
		then
			echo -n "&" >> $(pwd)/o3.log

		elif [ $X = 5 ]
		then
			echo -n "+" >> $(pwd)/o3.log

		elif [ $X = 6 ]
		then
			echo -n "-" >> $(pwd)/o3.log

		elif [ $X = 7 ]
		then
			echo -n ":" >> $(pwd)/o3.log

		elif [ $X = 8 ]
		then
			echo -n ";" >> $(pwd)/o3.log

		elif [ $X = 9 ]
		then
			echo -n "." >> $(pwd)/o3.log
		else
			echo -n "0" >> $(pwd)/o3.log
		fi
		clear
	done
fi

clear

echohex $1 > $(pwd)/hex.tmp

clear

sed 's/\(.\)/\1\n/g' -i $(pwd)/hex.tmp

clear

CNT=$(wc -m < hex.tmp)

clear

for i in $(seq 0 $CNT)
do
	clear
	HCH=($(cat $(pwd)/hex.tmp))
	OCO=$(cat $(pwd)/o3.log)
	clear
	echo -n ${HCH[$i]} >> $(pwd)/encrypt.log
	echo -n $OCO >> $(pwd)/encrypt.log
	clear
done

clear

rm $(pwd)/hex.tmp
rm $(pwd)/o3.log
mv $(pwd)/encrypt.log $(pwd)/encrypt.txt

clear

sed 's/\(.\)/\1\n/g' -i $(pwd)/encrypt.txt

clear

gedit $(pwd)/encrypt.txt &

clear






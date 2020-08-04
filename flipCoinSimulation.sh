#!/bin/bash -x

isTails=0
isHeads=1

heads=0
tails=0

difference=0

for((i=1; i<=40; i++))
do

	randomCheck=$((RANDOM%2))

	if [ $randomCheck -eq $isHeads ]
	then
        	heads=$((heads+1))
	elif [ $randomCheck -eq $isTails ]
	then
        	tails=$((tails+1))
	fi

	if [ $heads -eq 21 ]
	then

		while [ $difference -ne 2 ]
		do
			tails=$((tails+1))
			difference=$((heads-tails))
		done
		break

	elif [ $tails -eq 21 ]
	then

		while [ $difference -ne 2 ]
		do
			heads=$((heads+1))
			difference=$((tails-heads))
		done
		break
	fi
done

echo "Number of heads $heads times and Number of tails $tails times"

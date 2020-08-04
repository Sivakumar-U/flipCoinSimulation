#!/bin/bash -x

isTails=0
isHeads=1

heads=0
tails=0

for((i=1; i<=10; i++))
do

	randomCheck=$((RANDOM%2))

	if [ $randomCheck -eq $isHeads ]
	then
        	heads=$((heads+1))
	elif [ $randomCheck -eq $isTails ]
	then
        	tails=$((tails+1))
	fi
done

echo "Number of heads= " $heads
echo "Number of tails= " $tails


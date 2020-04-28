#!/bin/bash -x
#FLIP=$(( $(($RANDOM%10))%2))
echo "flip coin"

countT=0
countH=0

declare -A noOfcounts
i=11
  while [ $i != 0 ]
	do
	   flip=$(( $(($RANDOM%10)) % 2))
	   if [ $flip -eq 1 ];
	   then
	   ((countH++))
            echo "heads"
        else
		((countT++))
             echo "tails"
        fi
	((i--))
	     echo $i
    done     
noOfCounts[t]=$countT
noOfCounts[h]=$countH

echo ${noOfCounts[@]}
echo ${#noOfCounts[@]}

percentageofT=$((100*$flip/2))
echo "percentage of T= "$percentageofT
percentageofH=$((100*$flip/2))
echo "percentage of H= "$percentageofH	 
#!/bin/bash -x

echo "Flip coin"

echo "multiple time user want to flip a coin"
read flip
echo $flip

countTT=0
countTH=0
countHH=0
countHT=0
declare -A noOfCounts
for(( i=0; i<flip; i++ ))
do
if [ $(($RANDOM%4)) -eq 0 ]
then
((countHH++))
elif [ $(($RANDOM%4)) -eq 1 ]
then
((countTT++))
elif [ $(($RANDOM%4)) -eq 2 ]
then
((countTH++))
else
((countHT++))
fi
done

echo "HH"$countHH
echo "TT"$countTT
echo "TH"$countTH
echo "HT"$countHT

noOfCounts[hh]=$countHH
noOfCounts[tt]=$countTT
noOfCounts[th]=$countTH
noOfCounts[ht]=$countHT

echo ${noOfCounts[@]}

percentageofTT=$((100*$countTT/$flip))
echo "percentage of TT= "$percentageofTT
percentageofHH=$((100*$countHH/$flip))
echo "percentage of HH= "$percentageofHH
percentageofTH=$((100*$countTH/$flip))
echo "percentage of TH= "$percentageofTH
percentageofHT=$((100*$countHT/$flip))
echo "percentage of HT= "$percentageofHT
#!/bin/bash -x

echo "Flip coin"

echo "multiple time user want to flip a coin"
read flip
echo $flip

countTTT=0
countHHH=0
countHHT=0
countHTH=0
countTHH=0
countHTT=0
countTHT=0
countTTH=0

declare -A noOfCounts

for(( i=0; i<flip; i++ ))
do
if [ $(($RANDOM%8)) -eq 0 ]
then
((countHHH++))
elif [ $(($RANDOM%8)) -eq 1 ]
then
((countTTT++))
elif [ $(($RANDOM%8)) -eq 2 ]
then
((countHTT++))
elif [ $(($RANDOM%8)) -eq 3 ]
then
((countHHT++))
elif [ $(($RANDOM%8)) -eq 4 ]
then
((countTHH++))
elif [ $(($RANDOM%8)) -eq 5 ]
then
((countTTH++))
elif [ $(($RANDOM%8)) -eq 6 ]
then
((countHTH++))
else
((countTHT++))
fi
done

echo "HHH"$countHHH
echo "TTT"$countTTT
echo "THT"$countTHT
echo "HTH"$countHTH
echo "HHT"$countHHT
echo "TTH"$countTTH
echo "THH"$countTHH
echo "HTT"$countHTT

noOfCounts[hhh]=$countHHH
noOfCounts[ttt]=$countTTT
noOfCounts[tht]=$countTHT
noOfCounts[hth]=$countHTH
noOfCounts[hht]=$countHHT
noOfCounts[tth]=$countTTH
noOfCounts[thh]=$countTHH
noOfCounts[htt]=$countHTT

echo ${noOfCounts[@]}

percentageofTTT=$((100*$countTTT/$flip))
echo "percentage of TTT= "$percentageofTTT
percentageofHHH=$((100*$countHHH/$flip))
echo "percentage of HHH= "$percentageofHHH
percentageofTHT=$((100*$countTHT/$flip))
echo "percentage of THT= "$percentageofTHT
percentageofHHT=$((100*$countHTT/$flip))
echo "percentage of HHT= "$percentageofHHT
percentageofHTT=$((100*$countHTT/$flip))
echo "percentage of HTT= "$percentageofHTT
percentageofTHH=$((100*$countTHH/$flip))
echo "percentage of THH= "$percentageofTHH
percentageofHTH=$((100*$countHTH/$flip))
echo "percentage of HTH= "$percentageofHTH
percentageofTTH=$((100*$countTTH/$flip))
echo "percentage of TTH= "$percentageofTTH
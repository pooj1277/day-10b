#!/bin/bash
HH=0
HT=1
TH=2
TT=3
count=100
c=100
declare -A FlipCoin
FlipCoin[HH]=""
FlipCoin[HT]=""
FlipCoin[TH]=""
FlipCoin[TT]=""
hh=0
ht=0
th=0
tt=0
while [ $count != 0 ]
do
	result=$(($(($RANDOM%10))%4))
	if [ $result -eq 0 ]; then
		FlipCoin[HH]=HH
		((hh++))
		echo "HH"
	elif [ $result -eq 1 ]; then
		FlipCoin[HT]=HT	
		((ht++))
		echo "HT"
	elif [ $result -eq 2 ]; then
                FlipCoin[TH]=TH
                ((th++))
                echo "TH"
	elif [ $result -eq 3 ]; then
                FlipCoin[TT]=TT
                ((tt++))
                echo "TT"

	fi
((count--))
done
echo $hh
echo $ht
echo $th
echo $tt
percentHH=$((200*$hh/$c % 2 + 100*$hh/$c))
percentHT=$((200*$ht/$c % 2 + 100*$ht/$c))
percentTH=$((200*$th/$c % 2 + 100*$th/$c))
percentTT=$((200*$tt/$c % 2 + 100*$tt/$c))

echo ${FlipCoin[@]}
echo "percent of HEAD HEAD [HH] :"$percentHH
echo "percent of HEAD TAIL [HT] :"$percentHT
echo "percent of TAIL HEAD [TH]:"$percentTH
echo "percent of TAIL TAIL [TT]:"$percentTT

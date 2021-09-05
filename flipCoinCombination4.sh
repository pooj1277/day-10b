#!/bin/bash
count=100
c=100
declare -A FlipCoin
FlipCoin[HHH]=""
FlipCoin[HHT]=""
FlipCoin[HTH]=""
FlipCoin[HTT]=""
FlipCoin[THH]=""
FlipCoin[THT]=""
FlipCoin[TTH]=""
FlipCoin[TTT]=""

hhh=0
hht=0
hth=0
htt=0
thh=0
tht=0
tth=0
ttt=0

while [ $count != 0 ]
do
	result=$(($(($RANDOM%10))%8))
	if [ $result -eq 0 ]; then
		FlipCoin[HHH]=HHH
		((hhh++))
		echo "HHH"
	elif [ $result -eq 1 ]; then
		FlipCoin[HHT]=HHT	
		((hht++))
		echo "HHT"
	elif [ $result -eq 2 ]; then
                FlipCoin[HTH]=HTH
                ((hth++))
                echo "HTH"
	elif [ $result -eq 3 ]; then
                FlipCoin[HTT]=HTT
                ((htt++))
                echo "HTT"
	elif [ $result -eq 4 ]; then
                FlipCoin[THH]=THH
                ((thh++))
                echo "THH"
        elif [ $result -eq 5 ]; then
                FlipCoin[THT]=THT
                ((tht++))
                echo "THT"
        elif [ $result -eq 6 ]; then
                FlipCoin[TTH]=TTH
                ((tth++))
                echo "TTH"
        elif [ $result -eq 7 ]; then
                FlipCoin[TTT]=TTT
                ((ttt++))
                echo "TTT"


	fi
((count--))
done

percentHHH=$((200*$hhh/$c % 2 + 100*$hhh/$c))
percentHHT=$((200*$hht/$c % 2 + 100*$hht/$c))
percentHTH=$((200*$hth/$c % 2 + 100*$hth/$c))
percentHTT=$((200*$htt/$c % 2 + 100*$htt/$c))
percentTHH=$((200*$thh/$c % 2 + 100*$thh/$c))
percentTHT=$((200*$tht/$c % 2 + 100*$tht/$c))
percentTTH=$((200*$tth/$c % 2 + 100*$tth/$c))
percentTTT=$((200*$ttt/$c % 2 + 100*$ttt/$c))

echo ${FlipCoin[@]}
echo "percent of HEAD HEAD [HHH] :"$percentHHH
echo "percent of HEAD TAIL [HHT] :"$percentHHT
echo "percent of TAIL HEAD [HTH]:"$percentHTH
echo "percent of TAIL TAIL [HTT]:"$percentHTT
echo "percent of HEAD HEAD [THH] :"$percentTHH
echo "percent of HEAD TAIL [THT] :"$percentTHT
echo "percent of TAIL HEAD [TTH]:"$percentTTH
echo "percent of TAIL TAIL [TTT]:"$percentTTT

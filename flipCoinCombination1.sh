#!/bin/bash
head=1
tail=2
count=50
c=50
declare -A FlipCoin
FlipCoin[Head]=""
FlipCoin[Tail]=""

heads=0
tails=0
while [ $count != 0 ]
do
	result=$(($(($RANDOM%10))%2))
	if [ $result -eq 1 ]; then
		FlipCoin[Head]=H
		((heads++))
		echo "Heads"
	else
		FlipCoin[Tail]=T	
		((tails++))
		echo "Tails"
	fi
((count--))
done
echo $heads
echo $tails
percenth=$((200*$heads/$c % 2 + 100*$heads/$c))
percentt=$((200*$tails/$c % 2 + 100*$tails/$c))

echo ${FlipCoin[@]}
echo "percent of HEAD :"$percenth
echo "percent of TAIL :"$percentt

#!/bin/bash

result=$(($(($RANDOM%10))%2))
if [ $result -eq 1 ]; then
	echo Heads
else
	echo Tails
fi

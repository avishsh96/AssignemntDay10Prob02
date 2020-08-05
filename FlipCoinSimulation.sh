#!/bin/bash -x
count=0
while (( $count < 100 ))
do
((count++))
coinFlip=$((RANDOM%2))
if [[ $coinFlip -eq 1 ]]
then
        echo "Head"
else
        echo "Tail"
fi
done

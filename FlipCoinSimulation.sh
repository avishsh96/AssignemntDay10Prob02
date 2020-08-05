#!/bin/bash -x


playerOne=0
playerTwo=0
maxWin=21

while (( $playerOne < $maxWin && $playerTwo < $maxWin ))
do
coinFlip=$((RANDOM%2))
if [[ $coinFlip -eq 1 ]]
then
        echo "Player One won this round"
        ((playerOne++))
else
        echo "Player Two Won this round"
        ((playerTwo++))
fi
done

if [[ $(($playerOne-$playerTwo)) -eq 0 ]]
then
p1=0
p2=0
diff=0
while (( $diff <= 2 ))
do
coinFlip=$((RANDOM%2))
if [[ $coinFlip -eq 1 ]]
then
        ((p1++))
else
        ((p2++))
fi
diff=$(($p1-$p2))
done
        if [[ $p1 -gt $p2 ]]
        then
                echo "Player One Won"
        else
                echo "PLayer two Won"
        fi
elif [[ $playerOne -gt $playerTwo ]]
then
        echo "Player One Won by difference of: " $(( $maxWin - $playerTwo ))
else
	echo "Player Two Won by difference of: " $(( $maxWin - $playerOne))
fi

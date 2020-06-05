#!/bin/bash 
header=0;
tailer=0
for (( i=1; i<10; i++ ))
do
x=$((RANDOM%2))
if [ $x -eq 0 ]
then
echo "head wins"
let "header++"
else
echo "tail wins"
let "tailer++"
fi
done
echo  "header: $header"
echo  "tailer: $tailer"




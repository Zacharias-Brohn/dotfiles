#!/bin/zsh

MAX_DELAY=2.7
MIN_DELAY=2.4

for (( i = 1; i <= 1118; i++ )); do
    RANGE=$(( MAX_DELAY - MIN_DELAY ))
    RAND_MS=$(( RANDOM % ( (RANGE + 1) * 1000 ) ))
    SLEEP_TIME=$( awk "BEGIN { printf \"%.3f\", $MIN_DELAY + $RAND_MS/1000 }" )

    sleep $SLEEP_TIME

    echo 'mouseto 0.612 0.85' | dotoolc
    echo 'mouseto 0.611 0.85' | dotoolc
    echo 'click left' | dotoolc
    sleep 0.1
    echo 'click left' | dotoolc
done
pkill java
exit

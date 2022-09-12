#!/bin/bash
for ip in $(seq 2 50);
do
    ping -c 1 -W 0.2 "10.0.5.$ip" > /dev/null
    if [ $? -eq 0 ]; then
    echo "Address 10.0.5.$ip is UP at $(date)" >> ./Desktop/sweep.txt
    else
    continue
    fi
done

echo "Complete!"

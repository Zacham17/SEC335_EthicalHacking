#!/bin/bash
for ip in $(seq 2 50);
do
    if nmap -sn "10.0.5.$ip" | grep -q "Host is up"; then
    echo "10.0.5.$ip is UP" >> ./Desktop/sweep3.txt
    else
    continue
    fi
done 

echo "Complete!"

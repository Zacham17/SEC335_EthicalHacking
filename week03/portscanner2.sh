#!/bin/bash
# Port Scnning Script 2
# Collaborators:

network=$1
port=$2

if [ -n "$1" ] && [ -n "$2" ]; then
  for ip in $(seq 1 254); do
    timeout .1 bash -c "echo >/dev/tcp/$network.$ip/$port" 2>/dev/null
    if [ $? -eq 0 ]; then
      echo "Port $port is OPEN on host $network.$ip" 
    else
      continue
    fi
  done  
else
  echo "Not all parameters entered. Please enter a network and port parameter."
fi
echo "Scan Complete!"

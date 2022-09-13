#!/bin/bash
# Port Scnning Script 2
# Collaborators:

network=$1
dns=$2

if [ -n "$1" ] && [ -n "$2" ]; then
  echo "DNS resolution for $network"
  for ip in $(seq 1 254); do
    nslookup $network.$ip $dns | grep "name"
  done
  echo "Scan Complete!"  
else
  echo "Not all parameters entered. Please enter a network and dns server parameter."
fi


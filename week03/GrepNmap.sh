#!/bin/bash
# Grep for IP Addresses in a greppable nmap output

file=$1

if [ -n "$1" ]; then
  for ip in $(seq 1 254); do
    grep "open" $file | grep -F -o "10.0.5.$ip "
  done
else
  echo "No file to read entered"
fi
 

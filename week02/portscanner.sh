#!/bin/bash
# Port Scnning Script
# Collaborators: Alayna Cash, Morgan Hanrahan, Derek Farrell

hostfile=$1
portfile=$2

if [ -n "$1" ] && [ -n "$2" ]; then
  if [ ! -f $hostfile ] | [ ! -f $portfile ]; then
    echo "One or both of the files inputted were not found."
    exit 1
  fi
  for host in $(cat $hostfile); do
    for port in $(cat $portfile); do
      timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null
      if [ $? -eq 0 ]; then
      	echo "Port $port is OPEN on host $host" 
      else
        echo "Port $port is CLOSED on host $host"
      fi
    done  
  done
else
  echo "Not all parameters entered. Please enter a hostfile and portfile parameter."
fi

#!/bin/bash
# Port Scnning Script 2
# Collaborators:

network=$1
dns=$2

if [ -n "$1" ] && [ -n "$2" ]; then
  echo "DNS resolution for $network"
  sudo nmap -sL 10.0.5.0/24 --dns-servers 10.0.5.22 | grep "shire" | cut -b 22-
  echo "Scan Complete!"  
else
  echo "Not all parameters entered. Please enter a network and dns server parameter."
fi


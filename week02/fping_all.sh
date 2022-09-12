#!/bin/bash
sudo fping -s -g 10.0.5.2 10.0.5.50  2> /dev/null | grep "alive" >> ./Desktop/sweep2.txt
echo "Complete!"

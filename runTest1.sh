#!/bin/bash

#download test data
wget https://raw.githubusercontent.com/jianlianggao/npc2batman/master/test_data/npc2batman_test.csv -O /usr/local/bin/npc2batman_test.csv

#run npc2batman.py
cd /usr/local/bin

npc2batman.sh npc2batman_test.csv npc2batman_output.txt

file_name="npc2batman_output.txt"
if [ -f "$file_name" ]; then 
  echo "$file_name found."
else
  echo "$file_name not found!"
  exit 1
fi

echo "npc2batman ran successfully!"
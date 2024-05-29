#!/bin/bash


clear

echo "@beastbroak30"
echo "-----------------"
echo "Please provide the given data for setting up the server"


read -p "Enter the server address: " ip
read -p "Enter your port: " port


read -s -p "Enter the pass: " key


python clientE.py --host "$ip" --port "$port" --key "$key"

#!/bin/bash


clear


echo "@beastbroak30"
echo "-----------------"


ip=$(python -c "import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print(s.getsockname()[0])")

if [ -z "$ip" ]; then
  echo "Failed to retrieve local IP address. Please enter manually:"
  read -p "Enter your IP address: " ip
fi

echo "Your IP address is: $ip"

while true; do
  read -p "Enter port (excluding 5000): " port

  if [ "$port" != "5000" ]; then
    break
  fi

  echo "Invalid port! Please enter a port number other than 5000."
done


read -s -p "Enter key: " key


python serverE.py --host "$ip" --port "$port" --key "$key" --logfile logs.log

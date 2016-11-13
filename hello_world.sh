#!/bin/bash
cd /opt/linux-dash
npm install
node server &

while true
do
echo "Hellow World"
sleep 10
done

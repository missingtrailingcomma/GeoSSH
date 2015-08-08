#!/bin/bash

echo -e "Enter File Name: \c"
read filename
echo "ip,lat,lon,city,time" >> $filename
echo "ip=env | grep SSH_CLIENT | grep -o '\([[:digit:]]\+\.\)\{3\}[[:digit:]]\+'" >> ~/.bashrc
echo 'echo -e `env | grep SSH_CLIENT | grep -o \'\\([[:digit:]]\\+\\.\\)\\{3\\}[[:digit:]]\\+\'`\c >>'" $filename" >> ~/.bashrc
echo 'echo -e `curl "ipinfo.io/"$ip"/loc"`",\c" >>'" $filename" >> ~/.bashrc
echo 'echo -e `curl "ipinfo.io/"$ip"/city"`",\c" >>'" $filename" >> ~/.bashrc
echo "date +%Y/%m/%d\ %H:%M:%S >> $filename" >> ~/.bashrc

#!/bin/bash

echo -e "Enter File Absolute Path: \c"
read filename
touch $filename
echo "ip,lat,lon,city,time" >> $filename
echo "ip=env | grep SSH_CLIENT | grep -o '\([[:digit:]]\+\.\)\{3\}[[:digit:]]\+'" >> ~/Desktop/sample.txt
echo -e 'echo -e `env | grep SSH_CLIENT \c' >> ~/Desktop/sample.txt
echo -e "| grep -o '\([[:digit:]]\+\.\)\{3\}[[:digit:]]\+'\c" >> ~/Desktop/sample.txt
echo '`",\c" >> '"$filename" >> ~/Desktop/sample.txt
echo 'echo -e `curl "ipinfo.io/$ip/loc"`",\c" >>'" $filename" >> ~/Desktop/sample.txt
echo 'echo -e `curl "ipinfo.io/$ip/city"`",\c" >>'" $filename" >> ~/Desktop/sample.txt
echo "date +%Y/%m/%d\ %H:%M:%S >> $filename" >> ~/Desktop/sample.txt

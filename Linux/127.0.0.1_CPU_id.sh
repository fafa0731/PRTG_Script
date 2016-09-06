#!/bin/bash
cpuid=(`ssh root@127.0.0.1 top -b -n 1 | grep Cpu | awk '{print $5}' | cut -f 1 -d "."`)
#echo '<?xml version="1.0" encoding="UTF-8" ?>'
echo "<prtg>"
echo "<result>"
echo "<channel>CPU id %</channel>"
echo "<value>$cpuid</value>"
echo  "<unit>custom</unit>"
echo  "<customunit></customunit>"
echo "</result>"
echo "</prtg>"
exit

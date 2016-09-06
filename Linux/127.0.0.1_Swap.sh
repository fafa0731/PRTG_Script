#!/bin/bash
swap=(`ssh root@127.0.0.1 free -m | grep Swap | awk '{print $4}'`)
#echo '<?xml version="1.0" encoding="UTF-8" ?>'
echo "<prtg>"
echo "<result>"
echo "<channel>Swap free</channel>"
echo "<value>$swap</value>"
echo  "<unit>custom</unit>"
echo  "<customunit></customunit>"
echo "</result>"
echo "</prtg>"
exit

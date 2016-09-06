#!/bin/bash
procs_r=(`ssh root@127.0.0.1 vmstat | sed -n "3p" | awk '{print $1}'`)
#echo '<?xml version="1.0" encoding="UTF-8" ?>'
echo "<prtg>"
echo "<result>"
echo "<channel>Procs run</channel>"
echo "<value>$procs_r</value>"
echo  "<unit>custom</unit>"
echo  "<customunit></customunit>"
echo "</result>"
echo "</prtg>"
exit

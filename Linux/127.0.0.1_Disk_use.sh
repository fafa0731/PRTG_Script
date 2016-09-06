#!/bin/bash
diskuse=(`ssh root@127.0.0.1 df -HT / | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print$5 }'| cut -f 1 -d "%" | sed '/^\s*$/d'`)
diskuse_boot=(`ssh root@127.0.0.1 df -HT /boot | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print$6 }'| cut -f 1 -d "%" | sed '/^\s*$/d'`)
diskuse_u01=(`ssh root@127.0.0.1 df -HT /u01 | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print$5 }'| cut -f 1 -d "%" | sed '/^\s*$/d'`)
#echo '<?xml version="1.0" encoding="UTF-8" ?>'
echo "<prtg>"
echo "<result>"
echo "<channel>Disk Use / %</channel>"
echo "<value>$diskuse</value>"
echo  "<unit>custom</unit>"
echo  "<customunit>%</customunit>"
echo "</result>"
echo "<result>"
echo "<channel>Disk Use /boot %</channel>"
echo "<value>$diskuse_boot</value>"
echo  "<unit>custom</unit>"
echo  "<customunit>%</customunit>"
echo "</result>"
echo "<result>"
echo "<channel>Disk Use /u01 %</channel>"
echo "<value>$diskuse_u01</value>"
echo  "<unit>custom</unit>"
echo  "<customunit>%</customunit>"
echo "</result>"
echo "</prtg>"
exit

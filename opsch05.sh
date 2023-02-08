#!/bin/bash
#Ops301 Challenge 5 : Clearing Logs
#Author: Joe Doyle

now=$(date "+%Y-%m-%d-%H-%M-%S")

sysorg=$(stat -c %s /var/log/syslog)
wtmporg=$(stat -c %s /var/log/wtmp)
echo "Original Syslog file size:" $sysorg
echo "Original WTMP file size:" $wtmporg

zip /var/log/backup/wtmp_$now.zip /var/log/wtmp
zip /var/log/backup/syslog_$now.zip /var/log/syslog

syszip=$(stat -c %s /var/log/backup/syslog_$now.zip)
wtmpzip=$(stat -c %s /var/log/backup/wtmp_$now.zip )

echo Syslog original vs Compressed: $sysorg / $syszip
echo WMPT original vs Compressed: $wtmporg / $wtmpzip

cat /dev/null > /var/log/syslog
cat /dev/null > /var/log/wtmp
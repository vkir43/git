#!/bin/bash
rsync -a --delete /home/kirienko/ /tmp/backup
if [[ $? -eq 0 ]]
then
logger "backup done"
else
logger "backup error"
fi

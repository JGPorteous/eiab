#!/bin/bash
BACKUP_TEMP_FOLDER=/backups/eiab.tmp
BACKUP_FOLDER=/backups/eiab
mkdir -p $BACKUP_TEMP_FOLDER
mkdir -p $BACKUP_FOLDER
rm -fr $BACKUP_TEMP_FOLDER/*

#rsync -arR /etc/svxlink $BACKUP_TEMP_FOLDER
rsync -arR /etc $BACKUP_TEMP_FOLDER
rsync -arR /var/lib/alsa $BACKUP_TEMP_FOLDER
#rsync -arR /root $BACKUP_TEMP_FOLDER
rsync -arR /home/echolink $BACKUP_TEMP_FOLDER
rsync -arR /home/svxlink $BACKUP_TEMP_FOLDER

BACKUP_FILE=$(date +"%Y-%m-%d_%T")
tar cvzf $BACKUP_FOLDER/$BACKUP_FILE.tar.gz $BACKUP_TEMP_FOLDER

echo ""
echo "Created Backup $BACKUP_FILE"
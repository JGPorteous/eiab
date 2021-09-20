#!/bin/bash
BACKUP_FOLDER=/usr/share/eiab/backup.tmp
mkdir -p $BACKUP_FOLDER
mkdir -p /usr/share/eiab/backups
rm -fr $BACKUP_FOLDER/*

#rsync -arR /etc/svxlink $BACKUP_FOLDER
rsync -arR /etc $BACKUP_FOLDER
rsync -arR /var/lib/alsa $BACKUP_FOLDER

BACKUP_FILE=$(date +"%Y-%m-%d_%T")
tar cvzf /usr/share/eiab/backups/$BACKUP_FILE.tar.gz $BACKUP_FOLDER

echo ""
echo "Created Backup $BACKUP_FILE"
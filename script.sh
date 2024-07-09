#!/bin/bash

# Variables
CONTAINER_NAME=[container_name]
BACKUP_DIR=$(pwd)
BACKUP_FILE=$BACKUP_DIR/backup.tar.gz
REMOTE="remote:backup-folder"

# Backup Docker volume
docker run --rm -v $CONTAINER_NAME:/data -v $BACKUP_DIR:/backup ubuntu tar czvf /backup/backup.tar.gz -C /data .

# Push to GitHub
cd [repository_path]
cp $BACKUP_FILE .
git add backup.tar.gz
git commit -m "Add backup of Docker volume"
git push origin main

# Upload to cloud storage
rclone copy $BACKUP_FILE $REMOTE

# Clean up
rm $BACKUP_FILE

#!/bin/bash

#Kiem tra quyen root
if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root!"
	exit 1
fi


#Tao cac bien moi truong chua thong tin
BACKUP_DIR="/backup/daily"
RESTORE_DIR="/restore_test/samba"

echo "=============== Available Backups ==============="
ls -lh "$BACKUP_DIR"
echo "================================================="
echo

read -p "Enter backup file name: " FILE_NAME

BACKUP_FILE="$BACKUP_DIR/$FILE_NAME"

#Kiem tra xem file co ton tai khong
if [ ! -f "$BACKUP_FILE" ]; then
	echo
	echo "Backup file not found!"
	exit 1
fi

echo
echo "Restoring......."

tar -xzf "$BACKUP_FILE" -C "$RESTORE_DIR"

if [  $? -eq 0 ]; then
	echo
	echo "==================================================="
	echo " Restore completed successfully!"
	echo " File: $FILE_NAME"
	echo "==================================================="
	echo
else
	echo
	echo " Restore failed!"
fi

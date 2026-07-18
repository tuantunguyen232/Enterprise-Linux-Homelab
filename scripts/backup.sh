#!/bin/bash

#Kiem tra xem co chay quyen root khong
if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root."
	exit 1
fi

BACKUP_DIR="/backup/daily"

SOURCE="/srv/samba"

DATE=$(date +%F)

FILE_NAME="samba_${DATE}.tar.gz"

#Thuc hien backup
tar -czf "$BACKUP_DIR/$FILE_NAME" "$SOURCE"


#Kiem tra ket qua
if [ $? -eq 0 ]
then
	echo
	echo "==================================="
	echo "Backup completed successfully!"
	echo "Archive: $BACKUP_DIR/$FILE_NAME"
	echo "==================================="
else
	echo
	echo "Backup failed!"
fi

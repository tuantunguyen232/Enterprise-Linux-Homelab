#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root."
	exit 1
fi

BACKUP_DIR="/backup/daily"

SOURCE="/srv/samba"

DATE=$(date +%F)

FILE_NAME="samba_${DATE}.tar.gz"

tar -czf "$BACKUP_DIR/$FILE_NAME" "$SOURCE"

#!/bin/bash
#Script sao lưu các thư mục ở samba theo ngày, có thể phát triển cron để tự động sao lưu hàng ngày, hàng tuần hoặc hàng tháng 

if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root."
	exit 1
fi

BACKUP_DIR="/backup/daily"

SOURCE="/srv/samba"

DATE=$(date +%F)

FILE_NAME="samba_${DATE}.tar.gz"

tar -czf "$BACKUP_DIR/$FILE_NAME" "$SOURCE"

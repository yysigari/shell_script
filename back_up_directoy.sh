#!/bin/bash
# Simple backup script
echo "Enter the directory to back up: "
read dir
backup_dir="backup_$(date +'%Y%m%d_%H%M%S')"
cp -r "$dir" "$backup_dir"
echo "Backup of $dir created as $backup_dir"

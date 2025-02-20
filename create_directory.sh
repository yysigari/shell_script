#!/bin/bash
# Create a directory with today's date
dir_name=$(date +"%Y-%m-%d")
mkdir "$dir_name"
echo "Directory $dir_name created!"

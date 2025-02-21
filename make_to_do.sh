#!/bin/bash
echo "[$(date '+%Y-%m-%d %H:%M:%S')] $@" >> "$HOME/todo.txt"
echo "Note saved!"

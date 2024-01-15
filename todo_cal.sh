#!/bin/bash

# File to store the to-do list
TODO_FILE="todo.txt"

# Display the current month's calendar
echo "Calendar for the current month:"
cal

# Display the to-do list
echo -e "\nTo-Do List:"
if [ -e "$TODO_FILE" ]; then
    cat "$TODO_FILE"
else
    echo "No to-do items yet."
fi

# Menu for managing the to-do list
echo -e "\nMenu:"
echo "1. Add a to-do item"
echo "2. Remove a to-do item"
echo "3. Exit"

# Read user choice
read -p "Enter your choice (1/2/3): " choice

case $choice in
    1)  # Add a to-do item
        read -p "Enter the to-do item: " new_todo
        echo "- $new_todo" >> "$TODO_FILE"
        echo "To-do item added."
        ;;
    2)  # Remove a to-do item
        if [ -e "$TODO_FILE" ]; then
            echo -e "\nCurrent To-Do List:"
            cat -n "$TODO_FILE"
            read -p "Enter the number of the item to remove: " todo_number
            sed -i "${todo_number}d" "$TODO_FILE"
            echo "To-do item removed."
        else
            echo "No to-do items to remove."
        fi
        ;;
    3)  # Exit
        echo "Exiting. Have a great day!"
        exit 0
        ;;
    *)  # Invalid choice
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

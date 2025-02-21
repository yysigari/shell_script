#!/bin/bash
# Number Guessing Game
target=$(( RANDOM % 100 + 1 ))
guess=0
echo "Guess the number (1-100):"

while [ "$guess" -ne "$target" ]; do
  read -p "Enter your guess: " guess
  if [ "$guess" -lt "$target" ]; then
    echo "Too low!"
  elif [ "$guess" -gt "$target" ]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed it!"
  fi
done

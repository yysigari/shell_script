#!/bin/bash
quotes=("Keep going!" "Don’t ever let someone tell you, you can’t do something." "The secret to high performance isn’t rewards and punishments, but that unseen intrinsic drive– the drive to do things for their own sake. The drive to do things cause they matter." "Play the long game" "in any fight it’s the guy whose willing to die whose gonna win that inch" "it will beat you to your knees and keep you there permanently if you let it." "seize the day boys, make your lives extraordinary." "Remember why!" "You are capable of such beautiful dreams." "It is our light, not our darkness, that most frightens us." "You can do it!" "Never give up!" "You got this." "Things happen" "Ignore them!" "Believe in yourself!")
rand=$(( RANDOM % ${#quotes[@]} ))
echo "${quotes[$rand]}"


#!/bin/bash


#Welcome the user to Question Script
echo "Welcome to the Questionaire v1.0"
sleep 1
echo "Created by $(whoami) on $(data)"
sleep 1
echo "You will be prompted to answer several questions."
sleep 1
echo "Let's begin!!"
echo "---------------Start Questions---------------"
sleep 1

#Question 1
read -p "What is your favorite color? " color
sleep 1

#Question 2
read -p "What is your favorite activity " activity
sleep 1

#Question 3
read -p "What is your favorite pizza topping? " pizza
sleep 1

echo "--------------End of Questions---------------"
sleep 1

echo "--------------Formulating Results------------"

#Genrate Results that us basic Logic
if [ $color = "Blue" ]
then
	echo "Your favorite color is $color. Did you know that $color is the most popular color in the world!"
elif [ $color = "Pink" ]
then 
	echo "Your favorite color is $color. Did you know that $color is the second most popular in the world"
elif [ $color = "Green" ]
then
	echo "Your favorite color is $color. Did you know that $color is made by mixing blue and yello :-) !"
else
	echo"Your favorite color is $color. Nice!!"
fi
sleep 1


if [ $activity = "drawing"]
then
	echo"Your favorite activity is $activity. Did you know that 

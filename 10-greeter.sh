#/bin/sh

# function in bash

function weekend_greet 
{
   echo "Enjoy the weekend! ${1}!"
}

function weekday_greet
{
   echo "Hope you are working hard, ${1}!"
}

echo "Please enter your name"
read name

echo "Enter [1-4] what year of college you're currently at" 
read year

if [ $year = "1" ]; then
	echo "You're a freshman!" 
elif [ $year = "2" ]; then 
	echo "You're a sophomore!" 
elif [ $year = "3" ]; then 
	echo "You're a junior!"

fi

day=$(date | cut -d' ' -f1)  # you can use this form instead of backticks

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet $name
else
   weekday_greet $name
fi

# exercise: Add a second argument to the function 
# and make it give a greeting based on the new 
# argument.

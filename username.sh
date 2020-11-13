#! /bin/bash
# username.sh
# Evelyn Lawrie
echo "Your username must contain between three and twelve lowercase letters, digits, and underscores. It must start with a lowercase letter."
echo "Enter a username: "
read -r NAME
while echo "$NAME" | grep -E -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - between three and twelve lowercase letters, digits and underscores only! Remember to start with a lowercase letter!"
	echo "Enter a username: "
	read -r NAME
done
echo "Thank you!"

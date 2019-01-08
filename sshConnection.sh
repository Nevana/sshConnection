#!/bin/bash
#
#---------------------------------------------------------------#
#General information
sleep 0.1
echo "--------------------------------------------"
echo "Run: 		sshConnection.sh"
echo "Created: 	17.05.2018"
echo "Author: 	tim.ha"
echo "Company: 	no company"				                        
echo "--------------------------------------------"
#---------------------------------------------------------------#
#Set your privat-key
myKey="/home/user/.ssh/id_rsa"
#Set the name you wan´t to display
possibleConnection=("server1" "server2" "etc....")
#Colour of the outplut
echo -e "\e[33mNumber	Server\e[0m"
#Output of the remoteServer list
for i in "${!possibleConnection[@]}"; do
	printf "%s\t%s\n" "$i" "${possibleConnection[$i]}"
done
#Selection
echo "--------------------------------------------"
read -p 'Pelease choos a number: ' sshValue
#Remote connections
case "$sshValue" in
	"0")
		#Server 1
		ssh user@X.X.X.X -i $myKey
		;;
	"1")
		#Server 2
		ssh user@X.X.X.X -i $myKey
		;;
	"2")
		#etc.....
		ssh user@X.X.X.X -i $myKey
		;;
	*)
		#Error output
		echo "ERROR: Your value does not match with the Numbers!"
		;;
esac

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
#Run selection
echo $(jq '.[].serverName' servers.json)
#Selection
echo "--------------------------------------------"
read -p 'Pelease choos server: ' query
#Return the choosed server data
jsonQuery=$(jq -r --arg query "$query" '.[] | select(.serverName==$query)' servers.json)
#Remove the " in the string of the query
data="${jsonQuery//\"}"
#Save the string in an array
array=(${data//,/ })
#Connect to a server
ssh ${array[4]}@${array[6]} -p ${array[8]} -i ${array[10]}
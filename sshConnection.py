#!/usr/bin/env python3

import sys
import os
import json

#Design
def getLine():
        return "------------------------"
#Function to check data
def printData(data):
        counter = 0
        for i in data:
                print(counter, "\t", i["serverName"])
                counter += 1
#Check if is integer
def checkInputNumber(number):
        if not number.isdigit():
                sys.exit("Letters are not allowed!")
#Get directory of exectued file
def dirPath():
        return os.path.dirname(os.path.realpath(__file__))

#Start line
print("Run sshConnection.py")
print(getLine(), "\nNumber\tServer")
jsonFile = f"{dirPath()}/servers.json"
#Get json data
with open(jsonFile) as f:
        jsonData = json.load(f)
#Call printData function
printData(jsonData)
print(getLine())
number = input("Please enter number: ")
#Check if input is an number
checkInputNumber(number)
specificData = jsonData[int(number)]
os.system(f"ssh {specificData['userName']}@{specificData['server']} -p {specificData['port']} -i {specificData['keyPath']}")
sys.exit("Bye!")
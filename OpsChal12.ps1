#Script: Ops 201 class 12 Ops challenge
#Author: Samuel Allan
#Date of last edit: 03/23/2023
#Purpose: 
#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
#Use Select-String to search network_report.txt and return only the IP version 4 address.
#Remove the network_report.txt when you are finished searching it.
#variables: $mypath

#MAIN

#defining the variable $mypath to hold the full path and name of the file so it will work consistently across most computers
$mypath = "C:\Users\Admin\Desktop\network_report.txt"
#defining function iprevealer to perform the documentation part of the task
function iprevealer {
#placing all output of ipconfig command in the specified file in $mypath
    ipconfig /all > $mypath
    #reading the 18th line of that file to echo the ipv4 to the terminal
    select-string -path $mypath -pattern ".*" | select-object -Index 17
}
#calling the function
iprevealer
#giving the user time to read
pause
#removing the file when their work is done
Remove-Item -Path $mypath



#stretch goal code
$memry = ipconfig /all

function stretchgoal {
    $memry[17]
    pause
    ping localhost
    pause
    ping 8.8.8.8

}
stretchgoal
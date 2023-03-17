# Script: Ops challenge 10
# Author: Samuel Allan
# Date: 03/16/2023
# Purpose:Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
#Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
#Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
#Close all Internet Explorer windows.
#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

#Main
#echoing to clarify output, sorting processes by highest to lowest cpu usage
Write-Output "events shown from highest to lowest cpu usage"
Get-Process | Sort-Object -Property CPU -Descending
pause
#echoing to clarify output, sorting processes by highest to lowest PID
Write-Output "events shown by highest to lowest PID"
Get-Process | Sort-Object -Property Id -Descending
pause
#echoing to clarify output, sorting objects by highest to lowest wsk and then cutting out all but the first 5 from output
Write-Output "top 5 highest wsk events"
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5
pause
#starting internet explorer, opening webpage
Start-Process "C:\Program Files\Internet Explorer\iexplore.exe" "https://owasp.org/www-project-top-ten/"
pause
#repeat 10x
for ($i=1; $i -le 10; $i++) {
    Start-Process "C:\Program Files\Internet Explorer\iexplore.exe" "https://owasp.org/www-project-top-ten/"
}
pause
# kill all instances of internet explorer
Get-Process iexplore | Stop-Process -Force
#starting internet explorer again so it can be killed again
Start-Process "C:\Program Files\Internet Explorer\iexplore.exe"
pause
#killing the first PID related to internet explorer
Get-Process iexplore | Sort-Object -Property ID -Descending | Select-Object -First 1 | Stop-Process -Force

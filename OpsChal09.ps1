#Script:OpsChal09.ps1
#Author:Samuel Allan
#Date of latest revision:03/13/2023
#Purpose:Create a Powershell script that fetches useful System event logs.



#Main
function log24 {
    Get-EventLog System -After (Get-Date).AddDays(-1) | Out-File -FilePath .\last_24.txt
}
function logerrors {
    Get-EventLog System -EntryType Error | Out-File -FilePath .\errors.txt
}
function echo16 {
    Get-EventLog System -InstanceID 16
    pause
}
function new20 {
    Get-EventLog System -Newest 20
    pause
}
function sourcetime {
    Get-EventLog System -Newest 500 | Group-Object -Property Source -NoElement
}
log24
logerrors
echo16
new20
sourcetime
#End
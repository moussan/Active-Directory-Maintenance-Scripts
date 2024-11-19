# Script: Remove-InactiveADUser.ps1
# Description: Removes inactive users based on last logon date.

# Define the inactivity threshold (in days)
$Threshold = 90
$DateThreshold = (Get-Date).AddDays(-$Threshold)

# Find inactive users
$InactiveUsers = Get-ADUser -Filter {LastLogonDate -lt $DateThreshold} -Properties LastLogonDate

foreach ($User in $InactiveUsers) {
    Write-Output "Removing user: $($User.SamAccountName)"
    Remove-ADUser -Identity $User.SamAccountName -Confirm:$false
}

# Note: Use `-Confirm:$true` for testing before running in production.

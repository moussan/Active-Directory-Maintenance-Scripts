# Script: Find-DuplicateLogins.ps1
# Description: Finds duplicate SAMAccountNames or UserPrincipalNames.

# Get all users and check for duplicates
$Users = Get-ADUser -Filter * -Properties SamAccountName, UserPrincipalName
$Duplicates = $Users | Group-Object -Property SamAccountName, UserPrincipalName | Where-Object { $_.Count -gt 1 }

foreach ($Duplicate in $Duplicates) {
    Write-Output "Duplicate login found: $($Duplicate.Name)"
}

# Note: Adjust the properties as needed for your environment.

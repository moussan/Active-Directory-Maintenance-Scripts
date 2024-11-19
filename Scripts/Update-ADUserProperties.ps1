# Script: Update-ADUserProperties.ps1
# Description: Updates specific properties of a user account.

# Define user and properties
$Username = "jdoe"
$Title = "Senior Engineer"
$Department = "Engineering"

# Update the user
Set-ADUser -Identity $Username -Title $Title -Department $Department

Write-Output "Updated user '$Username' with Title: $Title and Department: $Department."

# Note: Adjust properties and user as required.

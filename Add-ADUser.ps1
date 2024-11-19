# Script: Add-ADUser.ps1
# Description: Adds a new user to Active Directory with basic properties.

# Define user details
$Username = "jdoe"
$Password = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force
$FirstName = "John"
$LastName = "Doe"
$OU = "OU=Users,DC=example,DC=com"

# Add the user
New-ADUser -SamAccountName $Username -UserPrincipalName "$Username@example.com" `
    -Name "$FirstName $LastName" -GivenName $FirstName -Surname $LastName `
    -Path $OU -AccountPassword $Password -Enabled $true

# Note: Adjust $OU and user details as per your organization.

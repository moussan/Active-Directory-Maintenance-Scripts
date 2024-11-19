# Script: Create-OrganizationalUnit.ps1
# Description: Creates a new organizational unit in Active Directory.

# Define the new OU details
$OUName = "NewDepartment"
$ParentOU = "OU=Departments,DC=example,DC=com"

# Create the OU
New-ADOrganizationalUnit -Name $OUName -Path $ParentOU

Write-Output "Organizational Unit '$OUName' created under '$ParentOU'."

# Note: Adjust $OUName and $ParentOU as needed.

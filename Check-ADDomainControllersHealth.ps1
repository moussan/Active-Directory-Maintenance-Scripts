# Script: Check-ADDomainControllersHealth.ps1
# Description: Checks the health of all domain controllers in the Active Directory domain.

# Import Active Directory module
Import-Module ActiveDirectory

# Get all domain controllers
$DomainControllers = Get-ADDomainController -Filter *

foreach ($DC in $DomainControllers) {
    Write-Output "Checking health for $($DC.HostName)..."
    dcdiag /s:$($DC.HostName)
}

# Note: Adjust $DomainControllers filter if specific domains or conditions are needed.

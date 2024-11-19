# Script: Unlock-LockedAccounts.ps1
# Description: Unlocks all locked user accounts.

# Find locked accounts
$LockedAccounts = Search-ADAccount -LockedOut

foreach ($Account in $LockedAccounts) {
    Unlock-ADAccount -Identity $Account.SamAccountName
    Write-Output "Unlocked account: $($Account.SamAccountName)"
}

# Note: Use with caution to ensure accounts should be unlocked.

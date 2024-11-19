# Script: Get-GroupMembershipReport.ps1
# Description: Exports the group membership details to a CSV file.

# Define the group and output file
$GroupName = "IT Department"
$OutputFile = "C:\Reports\GroupMembership.csv"

# Get group members and export
Get-ADGroupMember -Identity $GroupName | Select-Object Name, SamAccountName, ObjectClass | 
    Export-Csv -Path $OutputFile -NoTypeInformation

Write-Output "Group membership report saved to $OutputFile"

# Note: Adjust $GroupName and $OutputFile as needed.

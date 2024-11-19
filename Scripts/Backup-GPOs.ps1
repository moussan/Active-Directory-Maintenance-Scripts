# Script: Backup-GPOs.ps1
# Description: Backs up all Group Policy Objects to a specified folder.

# Define the backup path
$BackupPath = "C:\Backup\GPOs"

# Create the folder if it doesn’t exist
if (!(Test-Path $BackupPath)) {
    New-Item -ItemType Directory -Path $BackupPath
}

# Backup GPOs
Backup-GPO -All -Path $BackupPath

Write-Output "All GPOs backed up to $BackupPath."

# Note: Ensure $BackupPath has write permissions.

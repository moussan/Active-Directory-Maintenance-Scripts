# Script: Monitor-ADReplication.ps1
# Description: Checks Active Directory replication status.

# Run replication status check
$ReplicationStatus = Get-ADReplicationPartnerMetadata -Target (Get-ADDomainController).Name

foreach ($Partner in $ReplicationStatus) {
    Write-Output "Replication with $($Partner.Partner) - Status: $($Partner.LastReplicationResult)"
}

# Note: Ensure you have the required permissions to run this.

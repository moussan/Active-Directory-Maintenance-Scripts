# Active Directory Maintenance Scripts

A collection of PowerShell scripts for performing essential maintenance, reporting, and management tasks on Active Directory (AD) Server 2022. These scripts are designed to be modular, reusable, and customizable for any organization.

## 📁 Scripts Overview

| Script Name                        | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| `Check-ADDomainControllersHealth`  | Checks the health of all domain controllers in the AD domain.              |
| `Add-ADUser`                       | Adds a new user account with specified properties.                         |
| `Remove-InactiveADUser`            | Deletes inactive user accounts based on last logon.                        |
| `Get-GroupMembershipReport`        | Exports group membership details to a CSV file.                            |
| `Unlock-LockedAccounts`            | Unlocks all locked user accounts in the domain.                            |
| `Create-OrganizationalUnit`        | Creates a new Organizational Unit (OU).                                    |
| `Update-ADUserProperties`          | Updates properties of a specified user account.                            |
| `Backup-GPOs`                      | Backs up all Group Policy Objects (GPOs).                                  |
| `Find-DuplicateLogins`             | Identifies duplicate SAMAccountNames or UserPrincipalNames in the domain.  |
| `Monitor-ADReplication`            | Checks the replication status of AD between domain controllers.            |

## 🔧 Prerequisites

- Active Directory PowerShell module installed.
- Permissions to execute AD-related operations.
- PowerShell 5.1 or later.

## 🛠 How to Use

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/AD-Maintenance-Scripts.git
    cd AD-Maintenance-Scripts
    ```

2. Navigate to the `Scripts` folder:
    ```bash
    cd Scripts
    ```

3. Execute the desired script in PowerShell:
    ```powershell
    .\Check-ADDomainControllersHealth.ps1
    ```

4. Modify parameters and paths inside scripts as per your organization's requirements. Comments in each script guide you on which values to adjust.

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

We welcome contributions to enhance these scripts! See the [CONTRIBUTING.md](CONTRIBUTING.md) file for details.

## 📝 Disclaimer

These scripts are provided "as-is" and should be tested in a development environment before running in production. Use them responsibly!

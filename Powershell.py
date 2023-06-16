# Script Name:                 Powershell.py                
# Class Name:                  Ops 301d8
# Author Name:                 David Siebert 
# Date of latest revision:     14JUN/2023
# Create a Python script that Write a Powershell script that adds the below person to AD


# Import the Active Directory module
Import-Module ActiveDirectory

# Set the user details
$firstName = "Franz"
$lastName = "Ferdinand"
$displayName = "$firstName $lastName"
$officeLocation = "Springfield, OR"
$department = "TPS Department"
$email = "ferdi@GlobeXpower.com"
$username = "ferdinand"
$password = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force

# Set the AD user properties
$userParams = @{
    GivenName = $firstName
    Surname = $lastName
    DisplayName = $displayName
    Office = $officeLocation
    Department = $department
    EmailAddress = $email
    SamAccountName = $username
    UserPrincipalName = "$username@yourdomain.com"
    AccountPassword = $password
    Enabled = $true
}

# Create the user in Active Directory
New-ADUser @userParams


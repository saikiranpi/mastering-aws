![27](https://github.com/saikiranpi/mastering-aws/assets/109568252/cd601ddb-6158-45b3-a5e5-b44c6a741710)





# AWS FSX and Workspaces Setup Guide

Welcome to the AWS FSX and Workspaces setup guide! This document will help you configure Active Directory, FSX, and Workspaces on AWS. Follow the steps below to get started.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Active Directory Setup](#active-directory-setup)
3. [AWS Workspaces Setup](#aws-workspaces-setup)
4. [FSX Configuration](#fsx-configuration)
5. [Network Drive Mapping](#network-drive-mapping)
6. [Additional Notes](#additional-notes)

## Prerequisites

Before you begin, ensure you have the following:

- An AWS account with necessary permissions.
- A Windows instance for Active Directory setup.
- Access to AWS Management Console.

## Active Directory Setup

### 1. Install Active Directory

1. **Install AD DS:**
   - Open Server Manager and add the Active Directory Domain Services (AD DS) role.

2. **Disable Firewall:**
   - Open Firewall settings: `firewall.cpl`
   - Open Network Connections: `ncpa.cpl`
   - In Server Manager, turn off the firewall.

3. **Install AD DS Tools:**
   - Go to Server Manager > Manage > Add Roles and Features.
   - Select `Role Administration Tools` > `AD DS and AD LDS Tools` > `AD DS Tools`.
   - Click Next and Install.

4. **Configure Domain:**
   - Open System Properties: `sysdm.cpl`
   - Go to the Computer Name tab and click Change.
   - Set the domain to `saikiranpi.in` and enter the admin credentials.

5. **Create Users in AD:**
   - Open Active Directory Users and Computers: `dsa.msc`
   - In your domain, create two users with proper details.

## AWS Workspaces Setup

### 1. Create and Register Directory

1. **Create Directory:**
   - In the AWS Management Console, go to End User Computing > Workspaces.
   - Create a directory and register it.

2. **Register Directory:**
   - Select the registered directory and choose the subnets for your Workspaces.
   - Confirm the registration.

### 2. Launch Workspaces

1. **Launch Workspaces:**
   - In Workspaces, click Launch Workspaces.
   - Search for the users you created earlier.
   - Select the user, choose the standard with Windows bundle, and set it to AutoStop.
   - Do not select encryption (note: this will speed up the process).
   - Click Next and Launch Workspaces (this can take up to 40 minutes).

2. **Grant Access to Users:**
   - Login to your Windows machine.
   - Open Local Users and Groups Management: `lusrmgr.msc`
   - Go to Groups > Remote Desktop Users, add the user emails, and confirm.

3. **User Login:**
   - Users can now login with their credentials (e.g., `user@cloudvishwakarma.in`) via RDP.

## FSX Configuration

### 1. Create Shared Folders

1. **Access FSX:**
   - Open File Explorer and enter the FSX DNS name: `\\<FSX_DNS_Name>`
   - Create three folders: `User1`, `User2`, and `Common`.

### 2. Set Permissions

1. **Create AD Group:**
   - Go to your Windows AD and create a group called `myadmins`.
   - Add the two users to this group.

2. **Configure Folder Permissions:**
   - On the `Common` folder:
     - Right-click > Properties > Security > Edit > Add `myadmins` with Full control.
     - Go to Advanced > Disable inheritance > Remove all except `myadmins`.
   - Repeat for `User1` and `User2` folders:
     - Right-click > Properties > Security > Advanced > Disable inheritance.
     - Add the respective user with Full control and remove all others.

## Network Drive Mapping

### 1. Map Network Drive

1. **On User Machine:**
   - Open File Explorer.
   - Click This PC > Map network drive.
   - Enter `\\<FSX_DNS_Name>\share` and click Finish.

### 2. Mount to Server

1. **Access FSX:**
   - Copy the FSX DNS name.
   - On your server, open File Explorer and paste the DNS name to access the shared folders.

## Additional Notes

- For group login, additional licensing for Terminal Services may be required.
- Ensure proper permissions and security settings to maintain a secure environment.

---

Feel free to contribute, open issues, or ask questions in the repository!

---

### Contact

For any queries, contact [Pinapathruni.saikiran@gmail.com]

---

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

### References

- [AWS Directory Service Documentation](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html)
- [AWS Workspaces Documentation](https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces.html)
- [AWS FSX Documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)

---

<img width="960" alt="20" src="https://github.com/saikiranpi/mastering-aws/assets/109568252/ceb7e2d8-2b1d-45ba-af0d-cb542036215a">



IAM-SSO-SelfAD-ManageAD-Cognito
Overview
This repository focuses on integrating AWS managed Active Directory (AD) with AWS Single Sign-On (SSO) and managing permissions. Additionally, it explores the possibility of integrating Self-Hosted AD with SSO and configuring private Permissions.

Prerequisites
Before proceeding with the steps outlined below, ensure the following prerequisites are met:

Active Directory (AD) has already been installed in a previous session.
Three users have been created in AD using "dsa.msc", and the administrator password has been changed.
A new Windows instance needs to be deployed without installing AD, but with necessary tools.
Steps to Follow
Deploy Windows Instance:
Deploy a new Windows instance without installing AD but with required tools.
Install Microsoft AD:
Follow the steps to install Microsoft AD with any domain name (e.g., saikiran.com).
Connect the Directory Service to AD by providing necessary details.
Explain Microsoft AD and AD Connector:
Clarify the concept of Microsoft AD managed by AWS.
Define AD Connector for connecting existing AD with AWS services.
Configure DNS Settings:
Ensure DNS settings on the Windows instance are pointing to the managed AD service.
Install Remote Server Admin Tools:
Install Remote Server Admin Tools and Role Admin Tools, specifically Active Directory Domain Services (ADDS).
Join Windows Instance to Domain:
Change system properties to join the Windows instance to the MS AD domain.
Restart the instance once the configuration is complete.
Integrate MS AD with AWS SSO:
Navigate to IAM Identity Center > SSO > Settings to integrate MS AD with AWS SSO.
Customize the URL portal for user access.
User Management:
Log in to the Windows instance using administrator@saikiran.com.
Show the difference between sysdm.cpl and dsa.msc.
Create users in the new instance and add them to groups.
Assign Permissions:
Navigate to IAM Identity Center > Permission Sets to assign IAM policies (e.g., S3, EC2 access) to users.
Configure AWS SSO Identity Source:
Navigate to Identity and Compliance > AWS SSO > Settings to configure the identity source as AD.
This integration automates user provisioning and login to AWS services.
Conclusion

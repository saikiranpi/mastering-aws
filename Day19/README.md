

![19](https://github.com/saikiranpi/mastering-aws/assets/109568252/2551dbbd-8b39-4d16-b8eb-8cba408f67b8)



Role Switching Setup:
1. Create IAM Role in Main Account:

Navigate to IAM in the AWS Management Console of the main account.
Create a role.
Select "Another AWS account" as the trusted entity.
Input the master account ID.
Attach policies for EC2 full access and S3 full access.
Name the role appropriately and create it.
2. Repeat for Target Accounts:

Repeat the above steps for each target AWS account, ensuring the master account ID is used.
This establishes trust between the master and target accounts.
3. Create Admin Users in Master Account:

Create two admin users in the master account without attaching any policies.
4. Assign Admin Users to a User Group:

Create a user group in the master account.
Add the two admin users to this group.
Attach an inline policy to grant necessary permissions for role switching.
Installing Active Directory:
1. Launch Windows Instance:

Launch a Windows instance.
Modify DNS settings to point to the appropriate IP address.
2. Install Active Directory:

Disable the firewall.
Use Server Manager to install AD Domain Services & Telnet.
Follow the prompts to add a forest (e.g., saikiranpi.com) and set a password.
Once installed, access Active Directory Users and Computers (dsa.msc) to create users.
Managed Active Directory Setup:
1. AWS Managed MS AD:

Navigate to AWS Security Identity Compliance > Directory Service.
Choose AWS Managed Microsoft AD.
Configure directory details like domain name and password.
Select VPC and subnets, then create the directory.
Role Switching Interview Questions:
Discuss efficient role switching strategies within an AWS organization using Active Directory.
Compare and contrast managing multiple AWS accounts with AWS SSO and Active Directory.
Explain the two ways to deploy Active Directory: AWS Managed Active Directory and self-hosted using on-prem or EC2 instances.

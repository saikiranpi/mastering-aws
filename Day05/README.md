![VPC endpoints](https://github.com/saikiranpi/mastering-aws/assets/109568252/9395305a-78c6-4431-97fd-1856f9139392)


VPC Endpoints Guide
Welcome to the VPC Endpoints Guide! In this guide, we'll explore how VPC endpoints can be used to securely access AWS services without the need for public internet connectivity.

Introduction
Consider a scenario where you have a highly sensitive application deployed within an Amazon VPC (Virtual Private Cloud) in your AWS account. This application needs to securely access AWS services such as Amazon S3 and Amazon DynamoDB without exposing it to the public internet. Additionally, you want to restrict access to these services to only resources within your VPC.

VPC Endpoints Overview
VPC endpoints enable servers within a VPC to communicate with other AWS services internally, without needing to route traffic through the public internet. There are two types of VPC endpoints:

Gateway Endpoints: Used for services like S3 and DynamoDB.
Interface Endpoints: Create a network interface on a corresponding subnet for other services.
Gateway Endpoints
To set up a gateway endpoint:

Remove the route to the NAT gateway and disable all public access.
Go to the VPC dashboard, select S3 gateway endpoints, choose your VPC, and select both public and private routing tables. Create endpoints and wait for the file to be downloaded.
Verify by checking the private routing table.
Interface Endpoints
To set up interface endpoints:

Create a role for EC2 instances with managed instance core and SSM permissions.
Attach the IAM role to both public and private instances and reboot them.
Create endpoints for ec2messages, SSMMESSAGES, and SSM, selecting the proper private instance region, subnet, and security group. Reboot the private server and wait.
Test by checking internet connectivity (should not work) and downloading an image from S3 (should work).

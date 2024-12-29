# AWS Transit Gateway (TGW) Practical Demo

### What is Transit Gateway  (TGW)?
•	Transit Gateway is a AWS service which helps in centralising connectivity between multiple VPCs, on-prem networks and even other AWS Accounts
•	Reduces the need of VPC peering simplifying network management
•	Also called as Site to Site (or) Tunnel to Tunnel VPN Connection

# Practical Demo Steps

## Create Two VPCs in the Mumbai Region
- **VPC-1**: CIDR - `10.0.0.0/16`
- **VPC-2**: CIDR - `192.168.0.0/16`

## Update Security Groups
- Allow "All Traffic" in both VPCs.

## Create a Transit Gateway

## Attach Transit Gateway to Both VPCs
- Use Transit Gateway attachments, selecting the corresponding Transit Gateway and VPCs.

## Launch EC2 Instances
- Deploy one EC2 instance each in **VPC-1** and **VPC-2** for testing.

## Configure Route Tables
- Create route tables for **VPC-1** and **VPC-2**, directing traffic to each other's CIDR blocks via the Transit Gateway created earlier.

## Test Connectivity
- Use the `ping` command with the private IPs of the EC2 instances in both VPCs to verify connectivity.

## Validate Connectivity
- Ensure the `ping` command successfully exchanges packets, confirming proper routing and Transit Gateway configuration.

## Create a VPC in the North Virginia Region
- **VPC-3**: CIDR - `172.168.0.0/16`

## Update Security Groups
- Allow "All Traffic" in **VPC-3**.

## Create a Transit Gateway

## Attach Transit Gateway to VPC-3
- Use Transit Gateway attachments to link the Transit Gateway with **VPC-3**.

## Launch an EC2 Instance in VPC-3
- Deploy an EC2 instance in **VPC-3** for testing.

## Configure Route Tables
- Set up route tables in **VPC-3** for **VPC-1** and **VPC-2** CIDR blocks.

## Update Mumbai Region Route Tables
- Configure route tables in **VPC-1** and **VPC-2** to route traffic to **VPC-3** via the Transit Gateway.

## Verify Routing Configuration
- Ensure all routing configurations are complete.

## Create a Transit Gateway Peering Connection
- Establish a Transit Gateway peering connection from the North Virginia region to the Mumbai region to enable inter-region traffic flow.

## Accept the Peering Connection
- Approve the Transit Gateway peering request from the Mumbai region.

## Update Static Routes
- Update the Transit Gateway route tables:
  - Add **VPC-1** and **VPC-2** CIDRs with their Transit Gateway attachments in the North Virginia region.
  - Similarly, add **VPC-3** CIDR and its Transit Gateway attachment in the Mumbai region.

## Test Final Connectivity
- Use the `ping` command to validate connectivity between EC2 instances across all VPCs.
- Confirm successful traffic flow.

![vpc PEERING](https://github.com/saikiranpi/mastering-aws/assets/109568252/982bf754-b276-4154-8e4a-9c4b1f1294f0)



####### VPC PEERING #############

# VPC Peering Guide

Welcome to the VPC Peering Guide! This guide will walk you through the process of setting up VPC peering between different Virtual Private Clouds (VPCs) in AWS.

## Real-Time Example

Imagine you work for an MNC with data located in both the US and Europe regions. Your company uses AWS to host various services and critical applications. You have VPCs in the US East (Ohio) and EU (Ireland) regions.

### Before VPC Peering

Without VPC peering, communication between resources in separate VPCs and regions is not possible directly. This may lead to increased latency, security risks, additional costs, and potential data security compromises.

### After Peering

Setting up VPC peering establishes a private connection between the VPCs, enabling seamless communication between resources, reducing latency, and enhancing security.

## Setting Up VPC Peering

To set up VPC peering:
1. **Draw the Diagram**: Visualize the architecture to understand the network topology.
2. **Create VPCs**: Create three VPCs, two in the US East 1A (10.1.0.0/16, 172.16.0.0/16) and one in US East 2A (192.168.0.0/16).
3. **Create EC2 Instances**: Launch EC2 instances in each VPC, ensuring Nginx script is included in the user data.
4. **Configure Security Groups**: Allow necessary inbound and outbound traffic in the security groups for all VPCs and EC2 instances.
5. **Set Up VPC Peering**: Establish VPC peering connections between the VPCs, ensuring no IP overlap and no transits support.

![VPC Peering Diagram](vpc_peering.png)

Now, by setting up VPC peering, you've created a private connection between VPCs, enabling seamless communication between resources across different regions.

Remember to follow the two important rules when creating VPC peering connections: no IP overlap and no transits support.

Happy networking!

![image](https://github.com/saikiranpi/mastering-aws/assets/109568252/59795a41-5139-4fed-b43c-793040df240a)

![a w s-v p c](https://github.com/saikiranpi/mastering-aws/assets/109568252/51f3bbf7-0706-450b-abf5-8c4bd697911b)


############## AWS VPC ####################

# AWS VPC Setup Guide

Welcome to the AWS VPC Setup Guide! This guide will walk you through the process of creating a Virtual Private Cloud (VPC) along with its components such as subnets, Internet Gateway, and Routing tables.

## What is VPC?

A Virtual Private Cloud (VPC) is a virtual network environment within AWS that allows you to create a logically isolated section of the AWS Cloud where you can launch AWS resources in a virtual network that you define.

## Creating VPC

To create a VPC:
1. Go to the AWS Management Console.
2. Navigate to the VPC dashboard.
3. Click on "Create VPC" and specify the VPC details such as CIDR block.

## Creating Subnets & Internet Gateway

### Subnets
Subnets are subdivisions of a VPC's IP address range. They help organize and manage different parts of your network.

Imagine a large plot of land that you want to develop into a residential area. Subnets are like individual buildings within this plot, each containing multiple flats. 

To create subnets:
1. Navigate to the VPC dashboard.
2. Click on "Subnets" and then "Create Subnet".
3. Specify the subnet details including CIDR block and Availability Zone (AZ).

### Internet Gateway (IGW)
An Internet Gateway allows communication between instances in your VPC and the internet.

To create an Internet Gateway:
1. Navigate to the VPC dashboard.
2. Click on "Internet Gateways" and then "Create Internet Gateway".
3. Attach the Internet Gateway to your VPC.

## Creating Routing Tables

Routing tables define how traffic is directed within the VPC. They control the flow of traffic between subnets, internet gateways, and other network devices within the VPC.

To create a routing table:
1. Navigate to the VPC dashboard.
2. Click on "Route Tables" and then "Create Route Table".
3. Define the routing rules, ensuring that traffic flows efficiently and securely to its intended destination.

## Example on VPC

On a high level, each company's data and applications are kept separate and secure within their own VPC. Subnets help organize different stages of the software development lifecycle. 

![VPC Setup Diagram](vpc_setup.png)

Now you have configured VPC and Subnets successfully!

## Internet Gateway & Route Tables

### Internet Gateway (IGW)
An Internet Gateway allows communication between instances in your VPC and the internet.

### Route Tables
Route tables control the flow of traffic within the VPC. They ensure that traffic is directed efficiently and securely to its intended destination.

To configure Internet Gateway and Route Tables:
1. Create an Internet Gateway and attach it to your VPC.
2. Create a Route Table and define routing rules, allowing traffic to flow between subnets and the internet.

Remember to allow public subnets to access the internet by configuring the route table appropriately.

***Note:*** In routing tables, `0.0.0.0/0` means traffic not destined for the local network (e.g., `10.35.0.0/16`) should be routed to the internet gateway. 

Now you have a fully functional VPC with its components set up properly! Happy networking!

![image](https://github.com/saikiranpi/mastering-aws/assets/109568252/97947faf-5b41-41da-9be0-78fd4e495250)

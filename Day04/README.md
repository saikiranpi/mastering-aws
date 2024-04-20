![Flow Logs](https://github.com/saikiranpi/mastering-aws/assets/109568252/15614265-ebd8-4769-a7f2-636e56188098)



# VPC Flow Logs Guide

Welcome to the VPC Flow Logs Guide! This guide will help you understand the importance of VPC flow logs and how to set them up in AWS.

## Understanding VPC Flow Logs

After creating an EC2 instance, how does it connect to the internet? The network interface (ENI) is created, which connects to a subnet, and that subnet is connected to a VPC. There are three types of flows:

1. **ENI to Subnet:** Traffic flow between the network interface and the subnet.
2. **Subnet to VPC:** Traffic flow between the subnet and the VPC.
3. **ENI to VPC:** Aggregated traffic flow between the network interface and the VPC.

## Purpose of VPC Flow Logs

VPC flow logs are essential for auditing and tracing network traffic. They provide insights into network activities and help detect and investigate security breaches. For example, if there's a breach, the audit team may ask for VPC flow logs to trace the traffic. Additionally, compliance standards such as PCI DSS require organizations to maintain transaction history for security and governance purposes.

## Setting Up VPC Flow Logs

To set up VPC flow logs:
1. **Create Instance:** Launch an EC2 instance.
2. **Create S3 Bucket:** Create an S3 bucket to store the flow logs centrally.
3. **Configure Flow Logs:** Go to the VPC dashboard and create flow logs for the desired VPCs.

## Generating Logs

To generate logs, you can use the cloud shell and run a script to continuously hit a website and capture traffic:

```bash
curl ec2-35-173-233-127.compute-1.amazonaws.com
while true
do
  curl ec2-35-173-233-127.compute-1.amazonaws.com | grep -I nginx
  sleep 1
done
```

This script will generate continuous traffic hitting the specified website, allowing you to observe and capture flow logs.

By setting up VPC flow logs, you ensure visibility into your network traffic, aiding in security monitoring and compliance requirements.

Happy logging!

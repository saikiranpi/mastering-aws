![28](https://github.com/saikiranpi/mastering-aws/assets/109568252/99d12fd1-b83e-4fb4-9867-03f7ce59a652)



---

# Mastering AWS - Day 28

## Overview
This document outlines the steps to integrate AWS Systems Manager (SSM) with CloudWatch for enhanced monitoring and management of EC2 instances.

## Practical Case
In this scenario, we aim to set up SSM and CloudWatch integration to effectively manage and monitor EC2 instances.

### Step-by-Step Instructions
1. **Instance Setup**
   - Launch two instances: one Ubuntu and one Amazon Linux.
   - Create an IAM role with the following policies: `AmazonSSMManagedInstanceCore`, `AmazonSSMFullAccess`.

2. **SSM Run Command**
   - Use SSM Run Command to execute shell scripts on instances.
   - Example script:
     ```bash
     #!/bin/bash
     for I in {1..10}
     do
         echo $(date) > /tmp/FILE-$I
         sleep 1
     done
     ```
   - Select instances and choose CloudWatch Logs as output.

3. **Copy Script from GitHub**
   - Use SSM to copy scripts from a GitHub repo to instances.
   - Select Ubuntu instance only.

4. **Install CloudWatch Agent**
   - Install CloudWatch Agent for enhanced monitoring.
   - Ensure IAM role has policies: `AmazonEC2RoleforSSM`, `CloudWatchAgentAdminPolicy`, `CloudWatchAgentServerPolicy`.
   - Run `aws configure package` to prepare the CloudWatch Agent package.
   - Configure the agent using the wizard.
   - Repeat the same steps for both Ubuntu and Amazon Linux instances.

5. **Verify Installation**
   - Check Parameter Store for configuration details.
   - Ensure CloudWatch metrics are available for monitoring.
   - Use SSM to manage agent configuration.

## Why Install CloudWatch Agent?
Default EC2 monitoring provides limited metrics. To monitor additional metrics like disk space utilization, memory utilization, etc., enhanced monitoring with CloudWatch Agent is necessary.

## Conclusion
By following these steps, you can effectively manage your AWS instances using SSM and enhance monitoring with the CloudWatch agent. This setup provides comprehensive insights into your instances' performance and enables efficient management.

---

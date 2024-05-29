![29](https://github.com/saikiranpi/mastering-aws/assets/109568252/681ebb0c-6e58-45d8-8086-7b1c8770050c)




# Cloud Watch – 1

This repository provides detailed steps for deploying the CloudWatch Agent on Linux servers, creating alerts for memory and disk space usage, configuring CloudWatch logs, and setting up dashboards to monitor your infrastructure effectively.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Deployment Steps](#deployment-steps)
  - [1. Create IAM Role](#1-create-iam-role)
  - [2. Setup Amazon Linux Instances](#2-setup-amazon-linux-instances)
  - [3. Install and Configure CloudWatch Agent](#3-install-and-configure-cloudwatch-agent)
  - [4. Configure CloudWatch Logs](#4-configure-cloudwatch-logs)
  - [5. Create CloudWatch Alarms](#5-create-cloudwatch-alarms)
  - [6. Simulate Load for Testing](#6-simulate-load-for-testing)
- [Interview Question](#interview-question)

## Prerequisites

Ensure you have the necessary AWS permissions and access to create IAM roles, EC2 instances, and configure CloudWatch.

## Deployment Steps

### 1. Create IAM Role

Create an IAM role with the following policies:

- `AmazonEC2RoleforSSM`
- `CloudWatchAgentAdminPolicy`
- `CloudWatchAgentServerPolicy`
- `AmazonSSMManagedInstanceCore`
- `AmazonSSMFullAccess`
- `CloudWatchLogsFull`

### 2. Setup Amazon Linux Instances

Create two Amazon Linux instances and install NGINX and stress testing tool:

```bash
yum update -y
amazon-linux-extras install nginx1.12 -y
service nginx start
systemctl enable nginx
echo "<h1>$(cat /etc/hostname)</h1>" > /usr/share/nginx/html/index.html
sudo amazon-linux-extras install epel -y
sudo yum install stress -y
```

### 3. Install and Configure CloudWatch Agent

Use AWS Systems Manager (SSM) to install and configure the CloudWatch Agent:

1. **Install CloudWatch Agent:**
   - Navigate to SSM > Run Command > AWS-ConfigureAWSPackage
   - Package Name: `AmazonCloudWatchAgent`
   - Select Instance and run

2. **Manage CloudWatch Agent:**
   - Navigate to SSM > Run Command > AmazonCloudWatch-manageAgent
   - Parameter store Config Name: specify the name of your configuration

### 4. Configure CloudWatch Logs

To monitor NGINX logs:

1. Install AWS logs agent:

   ```bash
   sudo yum install -y awslogs
   ```

2. Edit the AWS logs configuration file:

   ```bash
   sudo nano /etc/awslogs/awslogs.conf
   ```

   Add the following configuration for NGINX logs:

   ```ini
   [/var/log/nginx/error.log]
   log_group_name = nginx-error-log
   log_stream_name = {instance_id}/error.log
   file = /var/log/nginx/error.log

   [/var/log/nginx/access.log]
   log_group_name = nginx-access-log
   log_stream_name = {instance_id}/access.log
   file = /var/log/nginx/access.log
   ```

3. Start the AWS logs service:

   ```bash
   sudo systemctl start awslogsd
   ```

   Repeat the above steps on both servers.

### 5. Create CloudWatch Alarms

1. **Memory Usage Alarm:**
   - Navigate to CloudWatch > Alarms > Create Alarm
   - Select metric: `cwagent > instanceID > mem_used_percent`
   - Set threshold: `Maximum > 1Min > Greater/Equal 40%`
   - Configure SNS notifications

2. **Disk Usage Alarm:**
   - Navigate to CloudWatch > Alarms > Create Alarm
   - Select metric: `cwagent > device,fstype,path > disk_used_percentage`
   - Set threshold: `Maximum > 1Min > Greater/Equal 26%`
   - Configure SNS notifications

### 6. Simulate Load for Testing

**Primary Server:**
- Install `htop`:

  ```bash
  yum install -y htop
  ```

**Secondary Server:**
- Simulate disk load:

  ```bash
  for i in {1..100}
  do
    cp terraform_1.zip terraform_$i.zip
    sleep 5
  done
  ```


![26](https://github.com/saikiranpi/mastering-aws/assets/109568252/e21c6307-a46f-41aa-815f-970e8e69af68)


AWS Glacier & AWS EFS Tutorial
This repository contains the code and documentation for our video tutorial on AWS Glacier and AWS Elastic File System (EFS). Follow along to learn how to set up and manage these AWS services efficiently.

AWS Glacier
AWS Glacier is designed for long-term storage of data that is infrequently accessed. Here’s how to get started:

Steps to Create a Glacier Vault
Create Vault: Start by creating a new vault in AWS Glacier.
Configure S3 Lifecycle Rule:
Go to S3 > Management > Lifecycle Rule.
Create a lifecycle rule to move current versions to different storage classes over time:
Standard IA (30 days)
Intelligent Tiering (60 days)
Glacier Instant Retrieval (90 days)
Glacier Flexible (180 days)
Delete expired objects after 365 days.
Explain Other Rules: Provide details on other lifecycle rules as needed.
Install Fast Glacier: Install and configure Fast Glacier for faster data transfers.
Pricing: Discuss the cost benefits of using AWS Glacier for long-term storage.
AWS Elastic File System (EFS)
AWS EFS provides scalable file storage for use with AWS cloud services and on-premises resources. Here’s a practical example to understand its setup and use:

Scenario: Jenkins Setup with EFS
Deploy Instances: Deploy two instances with user data (1A and 1B).
Directory Setup: Log in to the Ubuntu server and create the directory /var/lib/jenkins.
Create NFS File System: Ensure you select Public subnets when creating the NFS.
Mount EFS:
Edit /etc/fstab to include the EFS mount details.
Mount the EFS using: sudo mount -t nfs4 -o _netdev fs-XXXX.efs.us-east-1.amazonaws.com:/ /var/lib/jenkinslogs.
Run Jenkins Jobs: Run jobs in Jenkins and verify they are accessible across instances.
Centralize Syslog:
Concatenate syslog to a centralized location: cat /var/log/syslog.
Use a shell script (logbash.sh) to automate this process.
Automate Backups with Crontab:
Schedule the log backup script using Crontab: * * * * * bash /root/logbackup.sh.

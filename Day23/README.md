
![Redshift](https://github.com/saikiranpi/mastering-aws/assets/109568252/97664d8a-aa71-40cc-832f-c34c0d37a5ab)


Redshift Setup Guide
This guide provides step-by-step instructions for setting up Amazon Redshift for data warehousing purposes.

Prerequisites
AWS account with appropriate permissions
Windows instance (T2 medium)
Installation Steps
Create Windows Instance:

Launch a Windows instance, select T2 medium.
Configuration:

Navigate to Subnet group and remove private settings.
Install Dependencies:

Login to the Windows server.
Install Google Chrome.
Install Java SE Development Kit from Oracle.
Data Preparation:

Download sample files and load them into S3 under a folder named Data/.
Download Redshift Driver:

Access Redshift and download the driver version 4.2.
Save the driver under C:\ drive on the Windows machine.
Configure Workbench:

Copy Workbench to C:\ drive.
Run SQLworkbench64.
Manage drivers, select Amazon Redshift, remove current driver, add the downloaded driver.
Connect to Redshift by selecting the added driver, providing necessary credentials.
Data Loading:

Execute the command select distinct(tablename) from pg_table_def where schemaname = 'public';.
Copy tables and paste them.
Load data from S3 to Redshift using appropriate IAM role with S3 full access.
Quick Site:

Utilize Quick Site to provide Redshift details for easy comprehension by stakeholders.
Athena and Glue:

Organize S3 bucket, keep necessary files.
Use Glue to catalog tables and databases.
Query data using Athena.
Data Size Notations
B (Bytes)
KB (Kilobytes): 1024 Bytes
MB (Megabytes): 1024 KB
GB (Gigabytes): 1024 MB
TB (Terabytes): 1024 GB
PB (Petabytes): 1024 TB
EB (Exabytes): 1024 PB
ZB (Zetabytes): 1024 EB
YB (Yottabytes): 1024 ZB
Advantages
Redshift efficiently handles massive data and allows easy scalability.
SQL databases are suitable for smaller datasets but might struggle with handling petabytes of data.
By following these steps, you can set up Amazon Redshift for your data warehousing needs efficiently.

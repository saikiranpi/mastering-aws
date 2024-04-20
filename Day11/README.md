![11 EBS](https://github.com/saikiranpi/mastering-aws/assets/109568252/dc2a2152-8c80-45f3-be97-444f48af7e81)



Understanding  Storage Types
In AWS, storage options vary based on the type of data you're working with and your performance and durability requirements. Let's delve into the different types of storage available, focusing on EBS, which provides block-level storage volumes for use with EC2 instances.

Storage Types
1. Block Storage
Elastic Block Storage (EBS) Volumes:
Provides persistent block storage volumes that can be attached to EC2 instances.
Allows you to create, attach, and detach volumes to EC2 instances as needed.
Supports different volume types optimized for various workloads, including General Purpose SSD (gp2/gp3), Provisioned IOPS SSD (io1/io2), and Throughput Optimized HDD (st1).
Instance Storage:
Directly attached storage to EC2 instances.
Provides high I/O performance but is non-persistent.
Data stored in instance storage is lost if the instance is stopped or terminated.
Typically available in fixed sizes and types and limited to specific instance types.
2. File Storage
AWS Elastic File System (EFS):
Fully managed file storage service that supports NFSv4 protocol.
Offers scalable and highly available file storage for Linux-based workloads, allowing multiple EC2 instances to access the same file system concurrently.
AWS FSx:
Provides fully managed file systems optimized for Windows-based workloads, including Windows File Server and Lustre.
3. Object Storage
Amazon Simple Storage Service (S3):
Object storage service designed to store and retrieve any amount of data from anywhere on the web.
Ideal for storing unstructured data, such as images, videos, documents, and backups.
Offers high durability, availability, and scalability at a low cost.
Amazon Glacier:
Low-cost storage service designed for long-term data archiving and backup.
Offers multiple retrieval options with varying latency, allowing you to optimize costs based on your access requirements.
Advantages and Use Cases of EBS Volumes
Permanent Storage:
EBS volumes provide persistence, ensuring that data remains intact even if the associated EC2 instance is stopped or terminated.
Flexible Volume Types:
Choose from a variety of EBS volume types optimized for different performance and cost requirements, ranging from high-performance SSDs to cost-effective HDDs.
Scalability and Attachment Flexibility:
Easily scale EBS volumes up to 16TB in size and attach/detach them to different EC2 instances as needed.
Practical Implementation and Best Practices
Volume Provisioning and Mounting:
Provision EBS volumes and mount them to EC2 instances using standard Linux commands like lsblk, fdisk, mkfs, and mount.
Update the /etc/fstab file to automatically mount EBS volumes at boot time.
Performance Optimization:
Utilize different EBS volume types based on your application's performance requirements, ensuring optimal I/O performance and cost-effectiveness.
By understanding the various storage options available in AWS, including EBS volumes, you can architect scalable and reliable storage solutions tailored to your specific workload requirements and budget constraints.

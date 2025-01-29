# Mounting and Attaching EBS Volume to an EC2 Instance

## Step 1: Create an EC2 Instance

Launch an EC2 instance with the following specs:

- **Instance Type:** t2.micro
- **Root Volume:** 8 GB

## Step 2: Create an EBS Volume

Navigate to the EBS Dashboard and create a volume:

- **Type:** GP2
- **Size:** 4 GB
- Ensure the volume is in the same Availability Zone (AZ) as your EC2 instance.

## Step 3: Attach the Volume

Attach the newly created EBS volume to your EC2 instance.

## Step 4: Login and Verify the Block Device

1. SSH into your EC2 instance.
2. List the block devices using:
   ```
   lsblk
   ```
3. Confirm the new volume is listed and matches the size you created.

## Step 5: Format the Disk and Create a Partition

1. Start the disk partitioning tool:
   ```
   sudo fdisk <diskName>
   ```
2. Follow these steps in `fdisk`:
   - Type `n` to create a new partition.
   - Type `p` to make it a primary partition.
   - Press Enter three times to accept defaults.
   - Type `w` to write changes and exit.

## Step 6: Validate the Partition

Run the `lsblk` command again to ensure the partition is listed under the disk.

## Step 7: Create a Filesystem

Format the partition with the `ext4` filesystem:
```
sudo mkfs -t ext4 <diskPartition>
```

## Step 8: Prerequisite to Mount the Disk

1. Create a directory to mount the volume:
   ```
   sudo mkdir /<folderName>
   ```
2. Add some test data to validate persistence later.

## Step 9: Mount the Partition

Mount the partition to the folder:
```
sudo mount <diskPartition> /<folderName>
```

## Step 10: Persist Mount on Reboot

1. Edit the `fstab` file:
   ```
   sudo vi /etc/fstab
   ```
2. Add the line. Note: Give the relative (full) path of the folder
   ```
   <diskPartition> /<folderName> ext4 defaults 0 0
   ```
3. Save and verify using:
   ```
   cat /etc/fstab
   ```

## Step 11: Test Persistence

1. Stop and start the EC2 instance.
2. Verify the mount and test data:
   ```
   ls /<folderName>
   ```
   

userdata

#!/bin/bash
sudo apt install nfs-common -y
sudo apt update
sudo apt install -y openjdk-8-jdk

#####################################
mkdir /var/lib/jenkins
nano /etc/fstab
fs-0bfdccde40b0f6c5c.efs.us-east-1.amazonaws.com:/   	/var/lib/jenkins/   	nfs 
mount -a



###################################

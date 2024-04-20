#!/bin/bash
I=1
sgids='sg-0664fad55261dd1fa'
for subnet in 'subnet-0d124b5eb12011584' 'subnet-0aacfa913cba54372' 'subnet-0e595f62126dd8670'
do
    echo "Creating EC2 Instance in $subnet ..."
    aws ec2 run-instances --instance-type t2.nano --launch-template LaunchTemplateId=lt-0bc152f2d8ccfde3e --security-group-ids $sgids --subnet-id $subnet --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=AWSB28-Server-'${I}'}]' >> /dev/null 2>&1
    echo "Created EC2 Machine with the name Testserver-${I}"
    I=$((I+1))
done

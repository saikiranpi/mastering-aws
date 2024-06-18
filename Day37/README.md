# Cloud Infrastructure Best Practices

This repository outlines best practices for cost optimization and security in cloud infrastructure management. The practices covered include resource management, deployment strategies, and security measures to ensure efficient and secure cloud operations.

## Cost Optimization

1. **Document Resources**: Identify and document resources that need to be operational 24/7.
2. **Resource Management**: Shut down or pause resources that are not required during off-hours.
3. **Instance Utilization**:
   - Use Reserved Instances for long-term workloads.
   - Use Spot Instances to reduce billing for temporary workloads.
4. **Trusted Advisor**: Utilize trusted advisors to check for and address unutilized resources.

## Security

1. **Infrastructure as Code (IaaC)**:
   - Deploy infrastructure using Terraform.
   - Whenever possible, use serverless options like AWS Lambda.
2. **Monitoring and Alerts**:
   - Enable CloudTrail in all regions where the infrastructure is deployed.
   - Monitor all services with CloudWatch.
3. **Network Security**:
   - Do not deploy servers in public subnets.
   - Use Security Groups (SG) and Network ACLs (NACL) to restrict traffic.
   - Use VPC Endpoints for internal connectivity to other servers from VPC.
4. **High Availability**:
   - Distribute servers across multiple Availability Zones (AZ) for high availability.
   - Implement Auto Scaling to handle performance hikes.
5. **Data Backup**: Regularly backup database servers.
6. **Authentication and Authorization**:
   - Use Microsoft Active Directory (AD) for Single Sign-On (SSO).

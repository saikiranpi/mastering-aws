
![R53](https://github.com/saikiranpi/mastering-aws/assets/109568252/086cc978-ed31-4c50-8372-67065a7f35c0)

Step: 1 Create an instance. 
Step: 2 run below commands and make sure you are changing  domain name accordingly and also make sure all your subdomains were recorded in route53, watch myvideo day 00 video if you have doubt.  
Example my records for route53 policies ( **cloudvishwakarma.in failover.cloudvishwakarma.in latency.cloudvishwakarma.in weighted.cloudvishwakarma.in geolocation.cloudvishwakarma.in www.cloudvishwakarma.in**; )
step: 3 Once done create an AMI image for the same 
step: 4 Copy the current AMI image to AP-MUMBAI an deploy instance with it
step: 5 You can follow the day15 video accordingly to achieve the task

### Routing Policies with Route53

#### Route53 Explanation:
Hosting a website on AWS EC2 instances requires ensuring constant availability for users, even if some instances fail. Route 53 employs health checks to monitor instance health and automatically directs traffic away from unhealthy instances, ensuring seamless user experience.

#### Route53 Routing Policies:
- **Latency:** Route traffic to the AWS region with the lowest latency, enhancing application performance by minimizing response time for users.
- **Weighted:** Ideal for load balancing traffic between different versions of a website, gradually rolling out new features to a percentage of users.
- **Failover:** Automatically redirects traffic to a secondary server if the primary server fails.
- **Geo-Location:** Allows routing traffic based on the geographic location of users, optimizing performance and compliance.

#### Steps:
1. Deploy EC2 instances and create necessary certificates, then create an AMI image.
2. Deploy instances with the AMI in multiple regions.
3. Configure failover records with health checks for each server.
4. Set up primary failover records, directing traffic to the primary instance and failing over to secondary instances if necessary.
5. Verify failover functionality by editing files on instances and observing traffic redirection.
6. Monitor traffic using cloud shell and demonstrate health checks.
7. Test latency by creating records and changing values to observe regional routing.
8. Implement weighted routing by distributing traffic between regions.
9. Showcase Route53 resolver capabilities.

#### Interview Question:
Q: Could you please identify global AWS services?  
A: Route53 and IAM are global services. Although some may consider S3 as global, it operates within specific regions. For instance, when configuring VPC endpoints, specific regions like NV might be requested due to service availability constraints.


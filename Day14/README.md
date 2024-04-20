![ASG](https://github.com/saikiranpi/mastering-aws/assets/109568252/ba614fab-077e-4d43-a16c-a7a030532c76)



Setting up Auto Scaling Groups (ASG) allows you to automatically adjust the number of EC2 instances in response to changes in demand. Here's a step-by-step guide to configure ASG along with dynamic scaling:

**Steps:**

1. **Instance Setup:**
   - Deploy a t2.micro instance and install all necessary tools from a GitHub repository. Paste the commands till git in user data.
   - Once configured, create an AMI image of the instance.

2. **Target Group Configuration:**
   - Create a target group (HTTP) with a VPC, ensuring the attributes are set to 30 seconds.

3. **Load Balancer Setup:**
   - Create an Application Load Balancer (ALB) with public subnets, security groups allowing HTTP and HTTPS traffic. Configure SSL certificate and create the ALB.

4. **Route 53 Integration:**
   - Associate the ALB with a Route 53 record to attach the domain name.

5. **Launch Template Creation:**
   - Create a launch template with the necessary configurations for launching instances.

6. **Auto Scaling Group Configuration:**
   - Create an Auto Scaling Group (ASG), selecting the launch template, VPC, subnets, and ALB attachment.
   - Configure ELB health checks with a timeout of 90 seconds and maximum capacity set to 4.
   - Implement a Target Tracking scaling policy with notification SNS and set tags accordingly. Adjust attributes to 30 seconds.

7. **Dynamic Scaling Policy:**
   - Implement Dynamic Scaling with Step Scaling Policy.
   - Define alarms for scaling based on CPU utilization.
     - Create an alarm for increasing capacity when CPU utilization is greater than or equal to 40%.
     - Create an alarm for decreasing capacity when CPU utilization is lower than or equal to 35%.

8. **Load Testing:**
   - Login to the instance and generate stress using the stress command.
   - Keep the load for a specified duration.
   - Monitor the CPU utilization using htop command on duplicate server.
   - Check the alarms and observe instances increasing or decreasing based on load.
   - Refresh the website hosted on www.cloudvishwakarma.in to see how the servers handle the load dynamically.

By following these steps and testing the setup, you can ensure that your application remains responsive and scalable based on demand fluctuations.

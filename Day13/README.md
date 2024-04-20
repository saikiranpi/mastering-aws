


Creating an Application Load Balancer (ALB) and configuring it with multiple target groups can significantly enhance your application's scalability and reliability. Here's a step-by-step guide along with a diagram:

**Steps:**

1. **Instance Setup:**
   - Launch four EC2 instances with private subnets, placing two instances in subnet 1A and the remaining two in subnets 1B and 1C.
   - Ensure proper userdata configuration for each instance.

2. **Target Group Creation:**
   - Create three target groups:
     - Home Page: HTTP 80, health check `/homepage/`, add all instances.
     - Movies: HTTP 80, health check `/movies/`, add movies server only.
     - Shows: HTTP 80, health check `/shows/`, add shows server only.

3. **Load Balancer Configuration:**
   - Create an ALB (Internet-facing) in your VPC, selecting the public subnets and appropriate security group.
   - Configure two listeners: HTTP (80) and HTTPS (443).
   - Select the SSL certificate for your domain (e.g., `www.cloudvishwakarma.in`).

4. **Route 53 Setup:**
   - Create a Route 53 record pointing to the ALB.

5. **HTTP to HTTPS Redirection:**
   - Configure HTTP to HTTPS redirection:
     - Create a rule to redirect HTTP (80) traffic to HTTPS (443).
     - Ensure proper HTTPS redirection for all incoming traffic.

6. **Path-Based Routing:**
   - Implement path-based routing for different content:
     - Create rules to direct traffic based on paths (e.g., `/movies/*`, `/shows/*`).
     - Ensure each rule forwards traffic to the corresponding target group.

7. **Error Handling:**
   - Set up error handling rules:
     - Define rules for specific paths (e.g., `/google/*`) and provide appropriate responses (e.g., 503 error with a message).

8. **Virtual Hosting:**
   - Optionally, configure virtual hosting for multiple hosts:
     - Utilize host headers to direct traffic to different backend services based on the requested host.

**Diagram:**

```
                  +---------+
                  |  ALB    |
                  |         |
                  +----+----+
                       |
          +------------+------------+
          |                         |
    +-----v-----+             +-----v-----+
    | Target    |             | Target    |
    | Group:    |             | Group:    |
    | Homepage  |             | Movies    |
    |           |             |           |
    +-----+-----+             +-----+-----+
          |                         |
          |                         |
    +-----v-----+             +-----v-----+
    | Target    |             | Target    |
    | Group:    |             | Group:    |
    | Shows     |             | ...       |
    |           |             |           |
    +-----------+             +-----------+
```

By following these steps and configuring your ALB accordingly, you can efficiently distribute incoming traffic across your EC2 instances and provide a seamless experience for your users.

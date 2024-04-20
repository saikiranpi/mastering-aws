![NLB](https://github.com/saikiranpi/mastering-aws/assets/109568252/5e518bf7-931c-4f08-9684-22d63f643d80)


Commands for Load balancing checking !!!

-	while true; do curl -sL https://www.cloudvishwakarma.in/ | grep -i 'ip-10-0'; sleep 1; done

-	while true; do curl -sL https://www.cloudvishwakarma.in/ | grep -i 'ip-10-0'; sleep 1; done | tee -a awsnlb.log

-	cat awsnlb.log | grep -i ip-10-0-156-5 | wc -l


## Network Load Balancer (NLB)

In AWS, load balancers play a crucial role in distributing incoming traffic across multiple targets to ensure high availability, fault tolerance, and scalability of applications. Let's explore the Network Load Balancer (NLB), one of the types of load balancers offered by AWS.

### Overview:
NLB operates at Layer 4 (Transport Layer) of the OSI model, making it ideal for handling TCP and UDP traffic. It provides ultra-high performance and low-latency load balancing, making it suitable for use cases that require extreme performance and scalability.

### Key Features:
- **Layer 4 Load Balancing:**
  - NLB operates at the transport layer, allowing it to efficiently distribute traffic based on IP protocol data (TCP or UDP).

- **High Performance:**
  - NLB offers high throughput and low latency, making it suitable for latency-sensitive and high-traffic applications.

- **Cross-Zone Load Balancing:**
  - NLB supports cross-zone load balancing, enabling it to distribute traffic evenly across instances in different availability zones within the same region.

- **Target Groups:**
  - NLB forwards incoming traffic to a target group, which can include EC2 instances, IP addresses, or Lambda functions.

### Practical Implementation:
1. **Setting Up NLB:**
   - Create a Network Load Balancer in the AWS Management Console, specifying the listeners, target group, and other configuration details.

2. **Testing Load Balancing:**
   - Use tools like `curl` to send requests to the NLB's DNS name and observe the distribution of traffic across the registered targets.

3. **Monitoring and Optimization:**
   - Utilize AWS CloudWatch metrics to monitor the performance of the NLB and optimize its configuration based on traffic patterns and application requirements.

### Advantages and Use Cases:
- **Highly Scalable Applications:**
  - NLB is well-suited for applications that require high scalability and handle a large volume of traffic, such as gaming platforms, media streaming services, and IoT applications.

- **Latency-Sensitive Workloads:**
  - Applications with stringent latency requirements, such as financial trading platforms and real-time communication services, benefit from NLB's low-latency load balancing capabilities.

- **UDP-Based Applications:**
  - NLB is ideal for UDP-based applications like DNS servers, VoIP services, and online gaming platforms that require efficient load balancing of UDP traffic.

By leveraging Network Load Balancer, AWS customers can ensure the reliability, scalability, and performance of their applications, especially in scenarios where low latency and high throughput are paramount.

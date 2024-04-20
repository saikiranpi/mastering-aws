
![Security VS NACL](https://github.com/saikiranpi/mastering-aws/assets/109568252/2fe56c98-cc17-4589-821d-9b54e16ac47c)


# Security Groups vs Network Access Control Lists (NACLs)

Let's delve into the differences between security groups (SG) and network access control lists (NACLs) in AWS, using the analogy of firewalls and practical examples to illustrate their functionalities.

## Security Groups

Security groups act as stateful firewalls, controlling traffic at the instance level based on rules. They regulate inbound and outbound traffic and are associated with individual instances.

### Practical Example

Suppose you have an instance with default security group settings:
- All inbound traffic is denied by default.
- Outbound traffic is allowed by default.

1. **Allow All Inbound Traffic:** Delete the outbound rules and test internet connectivity. You'll notice that the instance can connect to the internet.
2. **Restrict Outbound Access to Websites:** Add outbound rules for HTTP and HTTPS. Test again to ensure only website access is permitted.
3. **Allow ICMP Protocol for Ping:** As ping uses ICMP protocol, add an outbound rule to allow ICMP traffic for ping to work.

Remember, security groups start with a default deny stance and require explicit rules to allow traffic.

## Network Access Control Lists (NACLs)

NACLs, on the other hand, function as stateless firewalls, controlling traffic at the subnet level based on rules. They evaluate inbound and outbound traffic separately and are associated with subnets.

### Real-Time Scenario

Let's consider a scenario where you have a web server that needs to be accessible from the internet. Here's the setup:
- Outbound Rules: Allow all traffic.
- Inbound Rules: Allow TCP port 80 from 0.0.0.0/0 (anywhere) for web traffic and TCP port 22 from your IP address for SSH access.

By configuring NACLs in this manner, you ensure that web traffic (HTTP) is allowed from anywhere while SSH access is restricted to your IP address only.

## Comparison: SG vs NACL

- **Security Groups:** Work at the instance level. They are stateful and require explicit rules for inbound and outbound traffic.
- **NACLs:** Operate at the subnet level. They are stateless and evaluate inbound and outbound traffic separately, with the option to allow or deny traffic based on defined rules.

Remember, in an interview scenario, you may be asked to differentiate between security groups and NACLs. Security groups regulate traffic at the instance level, while NACLs control traffic at the subnet level, offering both allow and deny options based on defined rules.

![SG vs NACL](sg_vs_nacl.png)

This diagram visually represents the differences between security groups and NACLs in AWS, highlighting their respective scopes and functionalities.


![Sg vs NACL](https://github.com/saikiranpi/mastering-aws/assets/109568252/8a623a87-f5f0-4d5d-a84c-268f28bd690a)


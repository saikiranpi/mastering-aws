
![Black Blue Pink Modern Artificial Intelligence YouTube Thumbnail](https://github.com/saikiranpi/mastering-aws/assets/109568252/fddf742a-56a5-4ef0-b93a-466940b3afd4)


###### IP Explained #######

# Network Setup Guide

Welcome to the Network Setup Guide! This guide will help you understand the basics of IP addresses, classes, public and private IPs, and how to configure them for different environments.

## Understanding IP Addresses

In any network setup, devices communicate with each other using IP addresses. There are two types of IP addresses:

1. **IPv4:** Shorter addresses, like phone numbers for devices.
2. **IPv6:** Longer addresses, similar to phone numbers but with more digits.

## IP Address Ranges

IPv4 addresses range from `0.0.0.0` to `255.255.255.255`. They are divided into five classes: A, B, C, D, and E.

- **Class A:** `1.0.0.0` to `126.255.255.255`
- **Class B:** `128.0.0.0` to `191.255.255.255`
- **Class C:** `192.0.0.0` to `223.255.255.255`

Classes D and E are reserved for specific purposes and not commonly used.

## Loopback Address

You might wonder why `127` is skipped. `127.0.0.1` is reserved for loopback, meaning a device pings itself.

## Public and Private IPs

As IP addresses are limited, there's a concept of public and private IPs.

- **Public IPs:** Used for communication over external networks.
- **Private IPs:** Used internally within closed infrastructures or office environments.

### Private IP Ranges

Private IPs are reserved within specific ranges:

- `10.0.0.0` to `10.255.255.255` (`10/8 prefix`)
- `172.16.0.0` to `172.31.255.255` (`172.16/12 prefix`)
- `192.168.0.0` to `192.168.255.255` (`192.168/16 prefix`)

These addresses are for internal use only and should not be accessible from outside the network.

## Configuring IP Addresses

### Example

To demonstrate, you can open CMD and type `ipconfig` to view your IPv4 private address. Then, by searching "my public IP" on Google, you can find your public IP address.

![Network Setup](network_setup.png)

In the diagram above, you can see how public and private IPs are used in different environments.

Now you have a basic understanding of IP addresses, classes, and how to use public and private IPs effectively. Happy networking!


![image](https://github.com/saikiranpi/mastering-aws/assets/109568252/8ffcbeb7-63d3-4df7-9a19-5d9ec9e31629)

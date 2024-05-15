Setting Up S3 Storage with CloudFront CDN for High-Performance Websites
Welcome to the ultimate guide for setting up AWS S3 storage with CloudFront CDN to optimize your website's performance and security.

Prerequisites
AWS Account
Basic understanding of AWS services
Steps:
Create S3 Bucket:

Create a bucket and upload necessary files.
Adjust Bucket Permissions:

Remove the check mark for "Block all public access".
Enable Static Website Hosting:

Enable static website hosting for the bucket.
Check ACM Certificate:

Ensure ACM certificate is available for the domain name used.
Remove ACLs:

Delete any ACL applied on bucket or object level.
Create CloudFront Distribution:

Select the bucket as origin.
Configure OAI and Bucket Policy:

Select "Yes use OAI" and create a new OAI.
Select "Yes, Update Bucket Policy".
Redirect HTTP to HTTPS:

Select redirection option.
Configure WAF ACL and SSL Cert:

Choose WAF ACL if exists.
Specify CNAMEs/Alternate names and SSL certificate.
Select Default HTML:

Set default HTML page.
Create Distribution:

Wait for successful deployment.
Create DNS Records:

Create DNS records for the CDN endpoint using CNAMES.
Access Your Website:

Access your website using the provided URLs and ensure SSL is enforced.
Avoid Direct S3 Access:

Direct access to S3 website will result in errors.
Follow these steps meticulously to optimize your website's performance with AWS S3 and CloudFront CDN. Happy optimizing!

Contributing
Contributions are welcome! Fork the repository and submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.


<img width="960" alt="21" src="https://github.com/saikiranpi/mastering-aws/assets/109568252/9629bdff-8d99-4243-a9de-053d128fff78">







This repository documents the process of setting up a SQL database and connecting it to a web application for efficient management and development purposes. It includes step-by-step instructions, best practices, and considerations for database administrators and developers alike.

Setup Instructions
Creating DB
Create subnet group under RDS.
Create a SQL DB.
Create one Windows instance for SQL workbench.
One Ubuntu instance for testing.
Login to the Windows instance and disable the firewall and enhance IE configuration under Server Manager.
Install Chrome.
Download and install Microsoft Visual C++ redistributable x64 bit.
Install Workbench and paste the code for execution.
Connecting to Web Application
Log in to Ubuntu and copy Python script and required files.
Add more movies data to the schema and ensure automatic updates.
Test primary and secondary databases.
Before testing, check connections from CMD using nslookup and endpoint.
Reboot RDS with failover to showcase failover and failback mechanisms.
Note: Inform the application development team about any backend issues. Caching data is recommended to avoid downtime.
Availability and Durability
Discuss options for availability and duration.
For multi-AZ-DB clusters, explain the possibility of keeping read replicas for connecting to third-party services.
Illustrate scenarios like creating a copy of a production DB server for development purposes.
Additional Considerations
Modify DB settings such as backup retention (1 day).
Discuss reserved instances for cost optimization.
Introduce read replicas for efficient data reading without modification capabilities.
Conclusion
This README provides a comprehensive guide for setting up and managing SQL databases, connecting them to web applications, and ensuring high availability and durability. By following these instructions and considering additional features like read replicas and reserved instances, you can streamline your database operations for optimal performance and cost-effectiveness.

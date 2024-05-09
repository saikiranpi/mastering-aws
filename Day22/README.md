![22](https://github.com/saikiranpi/mastering-aws/assets/109568252/d234cdd4-6113-4e86-a335-c78d6a2e3e44)


# Serverless Architecture using AWS DynamoDB, API Gateway, and Lambda

This repository demonstrates the implementation of a serverless architecture using AWS services such as DynamoDB, API Gateway, and Lambda. This architecture allows for efficient and scalable handling of data without the need for traditional server infrastructure.

## Overview

The architecture consists of the following components:

- **DynamoDB**: A key-value pair database service provided by AWS.
- **API Gateway**: Acts as a bridge between the web application and backend services, allowing for the creation of RESTful APIs.
- **Lambda**: AWS Lambda provides serverless computing, allowing you to run code in response to events without provisioning or managing servers.

## Explanation

- When a user visits the hosted website (e.g., hosted on AWS S3), and submits a form, the data is not directly stored in the database.
- Instead, the data is sent to API Gateway, the entry point for requests into AWS services.
- API Gateway cannot directly write data to the database, so an intermediate step is required.
- Lambda functions serve as the application logic in the middle. They process the data received from the API Gateway and interact with the database accordingly.
- This architecture is considered "serverless" because it eliminates the need to provision and manage servers, such as EC2 instances.

### Example Scenario

Suppose you want to create a website for tax calculation. Users fill out forms with their tax information, and the website calculates their tax liabilities. This process requires automated processing, making it suitable for a serverless architecture.

## Implementation Steps

1. **DynamoDB Setup**: Create a DynamoDB table to store the data.
2. **Lambda Function Creation**: Create Lambda functions to handle data processing. These functions will interact with DynamoDB.
3. **Lambda Permissions**: Configure permissions for the Lambda functions to access DynamoDB.
4. **API Gateway Configuration**: Set up RESTful APIs in API Gateway to receive and process requests.
5. **Testing**: Test the integration between API Gateway, Lambda, and DynamoDB using tools like ARC (Advanced REST Client).
6. **Deployment**: Deploy the APIs to a development stage for testing and further integration.

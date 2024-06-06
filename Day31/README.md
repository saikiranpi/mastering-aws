

![31](https://github.com/saikiranpi/mastering-aws/assets/109568252/d35247cd-da34-45d4-ae8d-a51ca3a68fdd)




```markdown
# AWS Developer Tools Automation

![AWS Developer Tools](https://your-logo-link.png)

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Build Status](https://github.com/yourusername/yourproject/workflows/Build/badge.svg)](https://github.com/yourusername/yourproject/actions)
[![Release](https://img.shields.io/github/release/yourusername/yourproject.svg)](https://github.com/yourusername/yourproject/releases)
[![Contributors](https://img.shields.io/github/contributors/yourusername/yourproject.svg)](https://github.com/yourusername/yourproject/graphs/contributors)
[![Issues](https://img.shields.io/github/issues/yourusername/yourproject.svg)](https://github.com/yourusername/yourproject/issues)

## Table of Contents
- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Steps](#steps)
  - [Cloud9 Setup](#cloud9-setup)
  - [CodeCommit](#codecommit)
  - [CodeBuild](#codebuild)
  - [IAM Roles](#iam-roles)
  - [Launch EC2 Instance](#launch-ec2-instance)
  - [CodeDeploy](#codedeploy)
  - [CodePipeline](#codepipeline)
- [Contributing](#contributing)
- [License](#license)

## Project Overview
This project demonstrates the use of AWS Developer Tools for automating the deployment process using Cloud9, CodeCommit, CodeBuild, CodeDeploy, and CodePipeline. The goal is to streamline manual tasks and create a seamless CI/CD pipeline.

## Prerequisites
- AWS Account
- Basic knowledge of AWS services
- Git installed
- AWS CLI configured

## Installation
1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/yourproject.git
    cd yourproject
    ```

## Usage
Follow the steps below to set up and automate your deployment process using AWS Developer Tools.

## Steps

### Cloud9 Setup
1. Create a new Cloud9 environment:
    - Name: `your-environment-name`
    - Environment: New EC2
    - Instance type: `t2.micro`
    - Network: Select your network
    - Create the environment

2. Set up a NAT:
    - Create a NAT
    - Clone your repo:
    ```sh
    git clone https://github.com/aws-samples/eb-tomcat-snakes
    ```

3. Push changes to CodeCommit:
    ```sh
    git remote add origin https://your-repo-url.git
    git status
    git remote -v
    git push origin master
    ```

### CodeCommit
1. Create a new repository in CodeCommit.
2. Push your Cloud9 project to this repository as shown above.

### CodeBuild
1. Create a build project:
    - Source: Your CodeCommit repository and branch
    - Environment: Ubuntu standard 4.0
    - Service role: New service role
    - Subnet: Select private subnets and attach the NAT
    - Buildspec: Paste your build script
    - Artifacts: S3, ZIP format, app.zip
2. Start the build and check S3 for artifacts.

### IAM Roles
1. Create two IAM roles:
    - S3 full access & AWS CodeDeployFullAccess
    - CodeDeploy role

### Launch EC2 Instance
1. Launch a new EC2 instance with the tag name `Tomcat-Server`.
2. SSH into the instance and install necessary packages.

### CodeDeploy
1. Create `appspec.yml` in Cloud9 and push to the repo:
    ```sh
    git status
    git add .
    git commit -m "added specFile"
    git push origin master
    ```

2. Edit and update the buildspec in CodeBuild.
3. Create a CodeDeploy application and deployment group with the `Tomcat-Server` tag.
4. Deploy your application using the S3 zip URI.

### CodePipeline
1. Create a new pipeline:
    - Source: CodeCommit (master branch)
    - Build: AWS CodeBuild project
    - Deploy: CodeDeploy deployment group

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any changes.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
.


![Black and Pink Gradient Modern Technologies YouTube Thumbnail](https://github.com/saikiranpi/mastering-aws/assets/109568252/743be0d5-d5c0-4f48-9aad-aa95180c5092)





Good Document : https://aws.amazon.com/premiumsupport/knowledge-center/iam-assume-role-cli/


How to Assume Role by AWS CLI for a user:
Create a new user with name awsb35user with access and secret key and copy the User ARM somewhere and Access key and Secret key.
Create AWS Role as awsb35-ec2-s3-role and assign custom policy as below.
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Stmt1645500904348",
            "Action": "s3:*",
            "Effect": "Allow",
            "Resource": "arn:aws:s3:::yourbucket/*"
        }
    ]
}

Edit trust policy of the role and give the following:
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::accountID:user/saikiran",
                    "arn:aws:iam::721834156908:user/saikiran"
                ],
                "Service": [
                    "ec2.amazonaws.com",
                    "lambda.amazonaws.com",
                    "ssm.amazonaws.com"
                ]
            },
            "Action": "sts:AssumeRole"
        }
    ]
}


Create a new AWS Linux 2 server and configure AWS Credentials for the user using access key and secret key which you have generated in the first step.


Creating following inline polices for the user.
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": "arn:aws:iam::accountID:role/saikiran-role"
    }
}


aws sts get-caller-identity
 

aws sts assume-role --role-arn "arn:aws:iam::721834156908:role/awsb35-ec2-s3-role" --role-session-name AWSB35

The above command will provide data which caontains access key, secret key & token.
export AWS_ACCESS_KEY_ID=accesskey
export AWS_SECRET_ACCESS_KEY=secretekey
export AWS_SESSION_TOKEN=session token **********************

aws sts get-caller-identity
 

wget https://releases.hashicorp.com/terraform/1.1.6/terraform_1.1.6_linux_amd64.zip

aws s3 cp terraform_1.1.6_linux_amd64.zip s3://yourbucket/terraform_1.1.6_linux_amd64.zip-001

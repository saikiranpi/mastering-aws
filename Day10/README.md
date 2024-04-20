![Packer](https://github.com/saikiranpi/mastering-aws/assets/109568252/c26c1269-82ec-49e1-91c6-91dcfd1fe778)


PACKER ALL LAB FILES HERE : https://github.com/saikiranpi/packer.git



AMI With PACKER

1-	Automation of AMI Creation Using Packer
2-	Secure AMI creation Using Inspector. 
1 – Secure AMI creation Using Inspector:
-	Create an EC2 instance and install nginx init from User data. Make sure you are giving the tags as app = Nginx. 

-	Download Inspector and Give permissions and install Inspector.

-	Meanwhile comeback to console and configure INSPECTOR (Scanning Will take for 15 min )

-	Assessment target > Create > Name optional > 

-	Use tags App: nginx – Save

-	Open amazon inspector >  Go to classic Inspector. 

-	Assessment templates > Create Name > target (you should select the name you have given)

-	Rile packages   > network – security – common vulnerability – CIS operating system.(Central Operating system)

-	It will take some time leave it like that . 


3-	Automation of AMI Creation Using Packer
Creation of AMI : 
-	Create a Ec2 
-	Login and install/configure all application
-	Shutdown the machine 
-	Create AMI image from the machine 
-	Check the AMI
-	Delete the machine 
Now we can automate all the steps guys, Daily we cant do all these manually. For achieving these we shall Using Hashicorp packer and terraform. 
-	Download packer from Packer.io > Binary file > Save it in C dire > Copy the path. 
-	And follow the steps. 


Go to Control Panel -> System -> System settings -> Environment Variables.
Scroll down in system variables until you find PATH.
Click edit and change accordingly.
BE SURE to include a semicolon at the end of the previous as that is the delimiter, i.e. c:\path;c:\path2
Launch a new console for the settings to take effect.

-------
-	Now I need Two files , create 1 as packer. Json and copy the code from terraform single instance GitHub and do necessary changes.

-	Now you need access key and secrete key, for that go to IAM > User > name > Attach existing policy > ec2fullaccess > Create security Credentials and paste it on a variable file 

-	AMI – VPC – subnet > Copy Ami from the region.

-	Now run the packer with the commands. Wrong command 

-	Packer.exe validate –var-file packer-vars.json packer.json

-	$ packer.exe inspect --var-file packer-vars.json packer.json



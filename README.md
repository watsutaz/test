OVERVIEW
========
This provides the steps to create an EC2 instance which runs and apache server which calls a ruby application that can be accessed on port 80.  


REQUIRMENTS
===========
AWS Account
Basic AWS knowledge on EC2
Access to EC2/VPC


STEPS
==========
1. In the AWS console, navigate to EC2 -> Instances -> Launch Instance
2. Step 1: Choose an Amazon Machine Image (AMI) Screen: Select Red Hat Enterprise Linux 7.5 (HVM), SSD Volume Type - ami-67589505, Click next
3. Step 2: Choose an Instance Type screen: Select General Purpose T2.Micro, Click next
4. Step 3: Configure Instance Details screen: Expand "Advance Details" and copy and paste the code from file xxx. click next
5. Step 4: Add Storage screen, click next
6. Step 5: Add Tags screen, click next
7. Step 6: Configure Security Group screen, add a new rule with type HTTP on port range 80 on source 0.0.0.0/0, ::/0. Click Review and Launch
8. Step 7: Review Instance Launch screen, click launch. Select or create a key pair for the EC2 Instance
9. Monitor the build. It will take approximately 10 minutes after the build to install and configure the app

Testing
==========
Hit the url of your EC2 instance to get a "Hello World" output. Example url: http://ec2-52-63-134-16.ap-southeast-2.compute.amazonaws.com

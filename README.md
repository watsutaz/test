REA PRACTICAL TASK
===================

OVERVIEW
========

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
9. Monitor the build. 

#!/bin/bash
LOGFILE=/tmp/install.out
{
echo "START OF SCRIPT"
echo "==================================="
yum update -y 
yum install git -y
yum install ruby -y 
echo "net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
systemctl restart network.service
useradd ruby
su - ruby -c "gem install bundler"
su - ruby -c "git clone https://github.com/rea-cruitment/simple-sinatra-app.git"
su - ruby -c "cd /home/ruby/simple-sinatra-app; bundle install;bundle exec rackup &"
yum install httpd -y
echo "
<VirtualHost *:80>

 ProxyPass / http://localhost:9292/
 ProxyPassReverse / http://localhost:9292/

</VirtualHost>" > /etc/httpd/conf.d/welcome.conf 
systemctl on httpd
systemctl start httpd 
/usr/sbin/setsebool -P httpd_can_network_connect 1
echo "==================================="
echo "END OF SCRIPT"
} 2>&1 | tee -a $LOGFILE

#!/bin/bash
set -e  # Exit immediately on any error

echo "=== [startserver.sh] Starting Tomcat and HTTPD services ===" >> /tmp/deploy.log

# Start and enable Tomcat
sudo yum install -y tomcat 
sudo systemctl enable tomcat.service
sudo systemctl start tomcat.service

# Start and enable Apache HTTPD
#sudo systemctl enable httpd.service
#udo systemctl start httpd.service

echo "=== [startserver.sh] Services started successfully ===" >> /tmp/deploy.log
exit 0

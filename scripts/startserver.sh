#!/bin/bash
 # Exit immediately on any error


# Start and enable Tomcat


sudo systemctl start tomcat9.service

# Start and enable Apache HTTPD
#sudo systemctl enable httpd.service
#udo systemctl start httpd.service

echo "=== [startserver.sh] Services started successfully ===" >> /tmp/deploy.log


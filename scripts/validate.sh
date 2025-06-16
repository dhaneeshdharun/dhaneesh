#!/bin/bash
set -e
echo "Validating Tomcat is running..." >> /tmp/deploy.log

systemctl status tomcat9 | grep running

echo "Tomcat is running." >> /tmp/deploy.log

#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"
TOMCAT_VERSION=9.0.34
TOMCAT_DIR=apache-tomcat-$TOMCAT_VERSION
INSTALL_DIR=/opt

echo "=== [install.sh] Installing Tomcat $TOMCAT_VERSION ===" >> "$LOG_FILE"

# Download Tomcat from Apache archive
wget https://archive.apache.org/dist/tomcat/tomcat-9/v$TOMCAT_VERSION/bin/$TOMCAT_DIR.tar.gz -P /tmp

# Extract
cd /tmp
tar -xvzf $TOMCAT_DIR.tar.gz

# Move to /opt
sudo mv $TOMCAT_DIR $INSTALL_DIR/
#sudo systemctl enable tomcat.service
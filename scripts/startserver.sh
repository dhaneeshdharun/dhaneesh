#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"

echo "=== [startserver.sh] Starting Tomcat service ===" >> "$LOG_FILE"
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$JAVA_HOME/bin:$PATH
sudo  /opt/bin/startup.sh

echo "=== [startserver.sh] Tomcat started ===" >> "$LOG_FILE"

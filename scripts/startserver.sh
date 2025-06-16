#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"

echo "=== [startserver.sh] Starting Tomcat service ===" >> "$LOG_FILE"

sudo -u tomcat /opt/tomcat/bin/startup.sh

echo "=== [startserver.sh] Tomcat started ===" >> "$LOG_FILE"

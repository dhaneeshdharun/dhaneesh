#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"

echo "=== [stopserver.sh] Attempting to stop Tomcat ===" >> "$LOG_FILE"

# Check if tomcat user exists
if id "tomcat" &>/dev/null; then
  echo "User 'tomcat' found. Stopping Tomcat as tomcat user..." >> "$LOG_FILE"
  sudo -u tomcat /opt/tomcat/bin/shutdown.sh
else
  echo "User 'tomcat' not found. Attempting shutdown as root..." >> "$LOG_FILE"
  sudo /opt/tomcat/bin/shutdown.sh || echo "Shutdown failed or Tomcat not running." >> "$LOG_FILE"
fi

echo "=== [stopserver.sh] Tomcat stop script completed ===" >> "$LOG_FILE"

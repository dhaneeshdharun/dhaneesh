#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"

echo "=== [stopserver.sh] Stopping Tomcat service ===" >> "$LOG_FILE"

sudo systemctl stop tomcat.service

echo "=== [stopserver.sh] Tomcat stopped ===" >> "$LOG_FILE"

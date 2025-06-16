#!/bin/bash
set -e

LOG_FILE="/tmp/deploy.log"

echo "=== [startserver.sh] Starting Tomcat service ===" >> "$LOG_FILE"

sudo systemctl start tomcat.service

echo "=== [startserver.sh] Tomcat started ===" >> "$LOG_FILE"

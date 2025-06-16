if id "tomcat" &>/dev/null; then
  sudo -u tomcat /opt/bin/shutdown.sh
else
  echo "Tomcat user not found, skipping shutdown"
fi

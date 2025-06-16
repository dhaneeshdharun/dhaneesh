#!/bin/bash
#isexistapp="$(pgrep httpd)"
#if [[ -n $isexistapp ]]; then 
##sudo systemctl stop httpd.service
#fi
sudo systemctl stop tomcat9.service
sudo systemctl disable tomcat9.service
#isexistapp="$(pgrep tomcat)"
##if [[ -n $isexistapp ]]; then 
##sudo systemctl stop tomcat.service
#fi
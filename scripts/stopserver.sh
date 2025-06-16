#!/bin/bash
#isexistapp="$(pgrep httpd)"
#if [[ -n $isexistapp ]]; then 
##sudo systemctl stop httpd.service
#fi
sudo systemctl stop tomcat.service
sudo systemctl disable tomcat.service
#isexistapp="$(pgrep tomcat)"
##if [[ -n $isexistapp ]]; then 
##sudo systemctl stop tomcat.service
#fi
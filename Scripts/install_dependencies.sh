#!/bin/bash

x=$(cat /etc/os-release)
y=$(echo $x | awk 'NR==1 {print $0}')

if [[ "$y" =~ .*"Ubuntu".* ]]; then
        sudo apt update -y
        sudo apt install python3.8 -y
	sudo pip install gunicorn
elif [[ "$y" =~ .*"Red Hat".* ]] || [[ "$y" =~ .*"Amazon".* ]]; then
	sudo yum update -y
        sudo yum install -y python3.8
	sudo pip install gunicorn
	
else
        echo "Any other OS"
fi

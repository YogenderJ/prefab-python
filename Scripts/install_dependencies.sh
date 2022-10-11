#!/bin/bash

x=$(cat /etc/os-release)
y=$(echo $x | awk 'NR==1 {print $0}')

if [[ "$y" =~ .*"Ubuntu".* ]]; then
        sudo apt update -y
        sudo apt install python3.8 -y
elif [[ "$y" =~ .*"Red Hat".* ]] || [[ "$y" =~ .*"Amazon".* ]]; then
	sudo yum update -y
        sudo yum install -y python3.8
else
        echo "Any other OS"
fi

#!/bin/bash

cd /home/ubuntu/codepipeline/python
#sh -c './start_python.sh'
#source env/bin/activate
#python3 app.py > /dev/null 2>&1 &
#touch aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.txt

#Copy custom_created systemd file
sudo chmod +x my_python.service
sudo cp my_python.service /etc/systemd/system/

##add exceutable permissions to go app
sudo chmod +x /home/ubuntu/codepipeline/python/start_python.sh

##Allows any users to write the app folder. Useful if using fs within the app
sudo chmod go+w /home/ubuntu/codepipeline/python

##Launches the express app
sudo systemctl daemon-reload
sudo systemctl start my_python.service
sudo systemctl enable my_python.service


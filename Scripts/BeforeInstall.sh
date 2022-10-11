#!/bin/bash
cd /home/ubuntu/codepipeline/python
for pid in $(lsof -t -i:3000); do kill -9 $pid; done
sudo rm -rf *
cd /home/ubuntu/codepipeline/python
source env/bin/activate
nohup python3 app.py > /dev/null 2>&1 &

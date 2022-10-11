#!/bin/bash
cd /home/ubuntu/codepipeline/python
source env/bin/activate
nohup python3 app.py > /dev/null 2>&1 &
touch aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.txt

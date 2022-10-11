#!/bin/bash
cd /home/ubuntu/codepipeline/python
source env/bin/activate
python3 app.py > /dev/null 2>&1 &
touch aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.txt

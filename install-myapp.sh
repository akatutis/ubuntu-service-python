#!/bin/bash
curr_dir=$PWD

systemctl stop myapp.service

mkdir -p /home/myapp && tar -xf myapp.tar.gz -C /home/myapp
cd /home/myapp

if [ -d "venv" ]; then
  echo "Virtual environment is already setup"
else
  apt update && apt upgrade -y
  apt install python3-pip -y
  apt install python3-venv -y
  python3 -m venv venv
fi

source venv/bin/activate

# install dependecies
# pip install mysql

chmod 770 start-myapp.sh

cp myapp.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable myapp.service
systemctl start myapp.service
systemctl status myapp.service

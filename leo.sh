#!/bin/bash

yum install ansible -y &>> /opt/userdata.log
ansible-pull -i localhost, -U https://github.com/hemanthtadikonda/leo.git leo.yml &>> /opt/userdata.log


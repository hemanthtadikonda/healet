#!/bin/bash
yum install ansible -y
ansible-pull -i localhost, -U https://github.com/hemanthtadikonda/leo.git leo.yml


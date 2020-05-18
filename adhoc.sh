#!/usr/bin/bash
ansible webservers -m yum -a "name=httpdsstate=latest"
ansible -m service -a "name=httpd state=enabled"
ansible -m service -a "name=httpd state=started"ssq
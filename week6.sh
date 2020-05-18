#!/usr/bin/bash
ansible -i host.ini web -m yum -a "name=httpd state=latest update_cache=yes"
ansible -i host.ini web -m service -a "name=httpd enabled=yes state=started"
firefox localhost &
anisble -i host.ini db -m yum -a "name=mariadb state=latest update_cache=yes"
ansible -i host.ini db -m service -a "name=mariadb enabled=yes state=started"
ansible -i host.ini db -m shell -a 'systemctl status mariadb' -b -K 

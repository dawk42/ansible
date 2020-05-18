#!/usr/bin/bash
ansible -i host.ini web -m yum -a "name=httpd state=latest update_cache=yes" -b
ansible -i host.ini web -m service -a "name=httpd enabled=yes state=started" -b
ansible -i host.ini db -m yum -a "name=mariadb-server state=latest update_cache=yes" -b
ansible -i host.ini db -m service -a "name=mariadb enabled=yes state=started" -b
ansible -i host.ini db -m shell -a 'systemctl status mariadb' -b
firefox 192.168.0.111

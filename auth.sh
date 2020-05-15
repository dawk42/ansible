cat ~/.ssh/ansible_rsa.pub | ssh justincase@web1.it385.local 'cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@web2.it385.local 'cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@db1.it385.local 'cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@db2.it385.local 'cat >> ~/.ssh/authorized_keys'

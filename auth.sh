cat ~/.ssh/ansible_rsa.pub | ssh justincase@192.168.0.111 'cat >> ~/.ssh/authorized_keys'
ssh 192.168.0.111 'chmod 700 .ssh; chmod 640 .ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@192.168.0.112 'cat >> ~/.ssh/authorized_keys'
ssh 192.168.0.112 'chmod 700 .ssh; chmod 640 .ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@192.168.0.121 'cat >> ~/.ssh/authorized_keys'
ssh 192.168.0.121 'chmod 700 .ssh; chmod 640 .ssh/authorized_keys'
cat ~/.ssh/ansible_rsa.pub | ssh justincase@192.168.0.122 'cat >> ~/.ssh/authorized_keys'
ssh 192.168.0.122 'chmod 700 .ssh; chmod 640 .ssh/authorized_keys'

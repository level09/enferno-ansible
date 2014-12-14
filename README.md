Deploy your Enferno App with this simple Ansible script
=======================================================

Example on how to use ansible to deploy simple project with git 

Edit hosts and vars.yml to suit your needs, then run the playbook using: 

```
ansible-playbook -i hosts enferno.yml 
```

This will do a complete server setup for you.
if you keep the default user password "enferno", make sure you login to your server and change it afterwards. 

* This script was tested on Ubuntu 12.x and 14.x only 

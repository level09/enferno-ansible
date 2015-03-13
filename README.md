Deploy your Enferno App with this simple Ansible script
=======================================================

Example on how to use ansible to deploy project enferno on Ubuntu server

it is recommended that you have ansible installed globally on you local machine: 

```
sudo pip install ansible
```

Edit hosts and vars.yml to suit your needs, then run the playbook using: 

```
ansible-playbook -i hosts enferno.yml 
```

This will do a complete server setup for you.
if you keep the default user password "enferno", make sure you login to your server and change it afterwards. 

After running the script, you can restart services with the following commands: 

Gunicorn Service 
---------------
```
sudo service enferno restart
```

Celery Service
--------------
```
sudo service clry restart
```

Nginx server
------------
```
sudo service nginx restart
```

The logs are avialable in the "log" directory inside the user home directory. 

Upstart scripts are inside the /etc/init 

shell scripts are created in the "bin" directory inside the user home directory. 


* This script was tested on Ubuntu 12.x and 14.x only 

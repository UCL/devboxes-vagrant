# CentOS 7.5 with Node and Glassfish

## Software versions:

- Node 10 
- Glassfish 5

## Installation 

Define Ansible host for apiclient and run with `ansible-playbook`
```
ansible-playbook -u dguzman -k -K playbook.yml --extra-vars "target=searchapp"
```

## Testing (connection to CS network required)

For local testing, just start a VM using vagrant.

```
vagrant up --no-provision

ansible-playbook --private-key=.vagrant/machines/default/virtualbox/private_key -u vagrant -i .vagrant/provisioners/ansible/inventory --extra-vars "target=all" --connection=ssh --ssh-extra-args="-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o StrictHostKeyChecking=no -o Port=2222 -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o User=vagrant -o ConnectTimeout=30" playbook.yml
```

Once the provisioning has completed, open http://localhost:10080 with a web browser
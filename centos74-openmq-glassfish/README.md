
# CentOS 7.4 with Message Queue and Java EE Application Server

## Software versions:

- Glassfish 5
- OpenMQ 5.1.1 (included in Glassfish distribution but running as a separate local process)

## Installation 

Define Ansible host for apiclient and run with `ansible-playbook`
```
ansible-playbook -u dguzman -k -K playbook.yml --extra-vars "target=apiclient openmq_admin_user=XXXXX openmq_admin_pass=XXXXX"
```

For local development, just start a VM using vagrant

```
vagrant up
```

## STOMP Messaging

OpenMQ is configured to receive STOMP messages on port 7672. Using `stomp.py` client you can connect and send messages:

```
python3 -m stomp -H [hostname] -P 7672 -U [user] -W [password] -S 1.0
send /queue/PubModelScore.Q 123
```

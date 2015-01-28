# kipper-demo

Kipper is the code name for the network automation project at Dyn.

Kipper is a combination of several tools:

* Github
* Ansible
* Jenkins
* etc.

This demo focuses on the Ansible part of Kipper, and the goal is to
share some of the most important building blocks for achieving the
same results in other networks.

## Requisites

### Ansible

Kipper uses Ansible as the configuration management tool.

#### Mac

Some parts of Ansible need to be compiled, so you'll need the developer tools that come with Xcode.

You may want to get the latest Xcode for here:

````
https://developer.apple.com/xcode/
````

#### Generic *nix-based systems

Install Ansible from source (recommended):

````
$ git clone git://github.com/ansible/ansible.git
$ cd ansible/
$ git submodule update --init --recursive
$ echo "source ~/ansible/hacking/env-setup" >> ~/.bash_profile
The last command assumes that your shell is bash. Adjust to your environment as needed.
````

Install the Junos Netconf library for Python.

If you don't have pip installed, you'll have to do:

````
sudo easy_install pip
````

Then:

````
$ sudo pip install git+https://github.com/Juniper/py-junos-eznc.git
````
Install the Junos Stdlib Module for Ansible:

````
$ cd
$ git clone https://github.com/Juniper/ansible-junos-stdlib.git
$ cd ansible-junos-stdlib
$ echo "export ANSIBLE_LIBRARY=~/ansible-junos-stdlib/library" >> ~/.bash_profile
````

Load the environment variables

````
$ source ~/.bash_profile
````

### Virtual Junos device

You can test this demo using JunOS virtual machines, such as the
Virtual SRX (vSRX). You can find some instructions at:

http://forums.juniper.net/t5/API-zation/FireFly-Perimeter-for-Building-Automation-Tools-Dev-Test/ba-p/229591

### SSH Keys

Generate SSH keys for the "oper" and "admin" users and make sure to
update the public keys in the common role variables.

## Operation

```
make build
make test
make deploy
```

## Author

Carlos Vicente cvicente@dyn.com

## Credits

* The network and automation teams at Dyn, who contributed many ideas
  present in this work

* Juniper Networks (and  Jeremy Schulman) for writing and
sharing the libraries on which this work is based.

#Overview
This is a simple project that uses Terraform to create a DigitalOcean droplet.  It is intended to quickly setup and 
teardown droplets for use in short-lived experiments.

This project creates, but does not provision, a [DigitalOcean](www.digitalocean.com/) droplet.  

#Prerequisites

* [Terraform](https://terraform.io/) installed and working
* Development and testing was done on [Ubuntu Linux](http://www.ubuntu.com/)
* [SSH](http://www.openssh.com/) installed and working

#Building
This project is a collection of data files consumed by Terraform so there is nothing to build. 

#Installation
Normally, there isn't anything to do other than to provide your own API key when prompted.  You can also modify 
`variables.tf` to change the droplet's settings.

#Tips and Tricks

##Creating The Virtual Hardware
To create a new environment, run `./create.sh` and you should have a new VPC with a single EC2 instance running that accepts all traffic 
from the internet.

##Verifying The Setup
Note the public ip address of the new droplet and then run `./ssh-into-instance.sh` giving it the ip address 
as an argument.  If everything is correct, you should be ssh'ed into your newly created box.

##Obtaining The Current State
Run `./inspect.sh` to see the current state of the droplet, including its ip address.
 
##Start Over
If there is an error with configuration that prevents Terraform from completing its mission, run `./destroy.sh` to remove any assets that 
have been created.  You don't want to get charged for assets that you are not going to use!

#Troubleshooting

TODO

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

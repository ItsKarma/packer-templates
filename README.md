Packer Image Builder for RHEL Family including Amazon Linux
============
Requirements
------------
### Required:
- [packer](http://www.packer.io/downloads.html)
  And one of the RHEL Family .iso to be placed in packer-isos/
- [CentOS](http://isoredirect.centos.org/centos/6/isos/x86_64/)
- [RHEL](https://access.redhat.com/downloads/)(Requires paid subscription or evaluation)
- [amazon-linux-ami](https://aws.amazon.com/marketplace/pp/B00635Y2IW)

### Optional
### If wanting to use Amazon Linux AMI on VirtualBox, requires some converting:
- [amazon-linux-KVM](http://linux.blogs.com.np/2010/04/05/how-to-move-a-virtual-machine-from-ec2-to-virtualbox-or-kvm/)
- [amazon-linux-VDI](http://church.cs.virginia.edu/genprog/index.php/Converting_an_EC2_AMI_to_a_VirtualBox_.vdi)

Variables
----------
This template uses a variable file for some options. An example variables file can be found at: packer-templates/variables.json
- You must add your aws credentials to the variables.json file and pass -var-file=variables.json when performing packer build. See Usage below.

Usage
-----
From within your packer/packer-templates/ directory:

### Building Amazon AWS Linux images
- packer build -var-file=variables.json -only="centos-6-ami" centos.json
- packer build -var-file=variables.json -only="rhel-6-ami" rhel.json
- packer build -var-file=variables.json -only="centos-linux-ami" amazon-linux.json
  
### Building VirtualBox Linux images
- packer build -only="centos-6-vbox" centos.json
- packer build -only="rhel-6-vbox" rhel.json
- packer build -only="amazon-linux-vbox" amazon-linux.json

Testing
------------
This template is only tested with [packer](http://www.packer.io/downloads.html) 0.7.5 and later on Mac OSX.
This template only is tested against 64 bit systems.
This template has only been testing with the following:
- centos-linux-ami
- centos-linux-vbox
- rhel-linux-ami
- rhel-linux-vbox
- amazon-linux-ami

To-Do
------------
- Add Fedora and OEL support.
- Add VMWare support.

Author(s)
-----------------
- Author:: Matthew Karmazyn (<matthew.karmazyn@gmail.com>)

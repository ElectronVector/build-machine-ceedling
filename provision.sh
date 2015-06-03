#!/bin/bash

# This is the provisioning script which is executed with the virtual machine is first created.
# Here is were we install all of the dependencies for our project.

# Switch to shared folder immediately upon login.
printf 'cd /vagrant' >> /home/vagrant/.bash

# Rake is a dependency for projects built with Ceedling.
apt-get -y install rake

# Some other tools we might want to use during the build.
# apt-get -y install doxygen
# apt-get -y install splint
# apt-get -y install pandoc

# Developer tools.
apt-get -y install git
# apt-get -y install subversion

# Get the test repository used in this example.
cd /vagrant
git clone https://github.com/ElectronVector/try-tdd-with-ceedling.git
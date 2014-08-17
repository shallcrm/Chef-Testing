#! /usr/bin/env bash

### BEGIN INIT INFO
# Short-Description: Vagrant provisioning script
# Description:       This is a template to be used for developing and testing shell scripts to be
#                    invoked by the Vagrant shell provisioning mechanism.
### END INIT INFO

# Author: Michael Shallcross <m.a.shallcross@gmail.com>
#

### CHANGE LOG

# 17 Aug 2014
# Added commands required to set up Chef for "Getting Started with Chef" sample application - phpapp

# 10 Aug 2014
# Initial version - based on example in "Vagrant - Up and Running" page 58

### END CHANGE LOG


# Update all packages
echo "Updating packages..."
apt-get update >/dev/null 2>&1

echo "Upgrading packages..."
apt-get upgrade -y >/dev/null 2>&1

# Install Midnight Commander
echo "Installing Midnight Commander..."
apt-get install -y mc >/dev/null 2>&1


# Insert run once logic here


# Define default Chef cookbook directory
echo "Setting up default path to cookbooks..."
cd /vagrant
mkdir .chef
echo "cookbook_path [ '/vagrant/cookbooks' ]" > .chef/knife.rb

# Create cookbook for sample application
echo "Creating cookbook..."
knife cookbook create phpapp


# Provisioning complete
echo "Provisioning script complete..."

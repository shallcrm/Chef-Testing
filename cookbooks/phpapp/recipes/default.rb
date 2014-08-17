#
# Cookbook Name:: phpapp
# Recipe:: default
#
# Copyright 2014, Michael Shallcross
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"

apache_site "default" do
  enable true
end

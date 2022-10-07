#
# Cookbook:: assignment_install_apache_server
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.


include_recipe 'assignment_install_apache_server::install'
include_recipe 'assignment_install_apache_server::config'
#include_recipe 'assignment_install_apache_server::cleanup'
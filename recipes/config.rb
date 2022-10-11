#
# Cookbook:: assignment_install_apache_server
# Recipe:: config
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apache_package_name = node['apache']['package_name']
file '/var/www/html/index.html' do
    content "Hello Ajay! Apache Configured Successfully"
    action :create
  end


  service apache_package_name do
    action [:enable ]
  end
#
# Cookbook:: assignment_install_apache_server
# Recipe:: cleanup
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apache_package_name = node['apache']['package_name']
puts "#{apache_package_name}"
package 'apache2'  do
    action :remove
end


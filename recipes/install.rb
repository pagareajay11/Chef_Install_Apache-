#
# Cookbook:: assignment_install_apache_server
# Recipe:: install
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#resource resource_name

# p=node.default['package_name']
# puts #{p}
apache_package_name = node['apache']['package_name']

#action_name = node['action_name']
# log 'apache_package_name' do
#     message  apache_package_name
#     level :info
#   end

# users = node['users']['list']

# users.each do |u|
#     puts "user: #{u}"
# end

puts "package_name: #{apache_package_name}"
actions =[:install ]
version =node['apache']['version']

puts "actions: #{actions}"
puts "version: #{version}"

#checking logs
#Chef::Log.info(node['apache']['listen_ports'].to_hash)
#puts "action: #{action_name}"

package apache_package_name do
    action actions 
    version version
end

# package 'Install Apache' do
#       package_name apache_package_name
#       version '2.4.41-4ubuntu3.12'
#   end
  
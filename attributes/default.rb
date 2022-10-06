#Key Value Collection

case node[:platform]
when 'redhat', 'centos'
   default['apache']['package_name']= 'httpd'
when 'ubuntu', 'debian'
   default['apache']['package_name']= 'apache2'
   default['apache']['version']='2.4.41-4ubuntu3.12'
end

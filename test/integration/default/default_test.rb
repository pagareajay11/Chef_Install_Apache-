# Chef InSpec test for recipe assignment_install_apache_server::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/


unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

######## ATTRIBUTES ########
PACKAGE = attribute('package', 
                    default: 'apache2',
                    description: 'package name'
                   )
                   
SERVICE = attribute('service', 
                    default: 'apache2', 
                    description: 'service name'
                   )
######## TEST CONFIGURATION ########
describe package(PACKAGE) do
  it { should be_installed }
end
describe service(SERVICE) do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
######## TEST PROMISE ########
describe port(80) do
  it { should be_listening }
end
describe http('localhost') do
  its('status') { should eq 200 }
  its('headers.Content-Type') { should include 'text/html' }
  its('body') { should include 'Hello Ajay! Apache Configured Successfully' }
end
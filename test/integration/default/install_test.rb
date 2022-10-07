# Chef InSpec test for recipe assignment_install_apache_server::install

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/
# require 'chefspec'
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

require 'chefspec'


# describe 'assignment_install_apache::install' do
   
#    describe 'install apache package' do
#      it do
#       is_expected.to install_package(package_name)
#    end

# end
PACKAGE = attribute('package', 
                    default: 'apache2',
                    description: 'package name'
                   )
                   
SERVICE = attribute('service', 
                    default: 'apache2', 
                    description: 'service name'
                   )
                   
  describe package(PACKAGE) do
  it { should be_installed }
end
describe service(SERVICE) do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
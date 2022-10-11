# Chef Spec Test Cases 

require 'chefspec'
package_name = 'apache2'

describe 'assignment_install_apache_server::install' do
    let(:node){subject.node}
    
    cached! :subject do
        ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe)
    end
    
    describe 'install apache package' do
        it do
            is_expected.to install_package(package_name)
        end
    
end
end
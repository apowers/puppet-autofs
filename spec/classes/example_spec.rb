require 'spec_helper'

describe 'autofs' do
  let(:title) { 'autofs' }

  ['Debian', 'RedHat'].each do |osfamily|
    describe "autofs class without any parameters on #{osfamily}" do
      let(:params) {{ }}
      let(:facts) { { :osfamily => osfamily } }

      it { should create_class('autofs') }
      it { should create_package('autofs') }
      it { should create_file('/etc/autofs.master') }
      it {
        should create_file('/etc/autofs.master')\
      }
      if osfamily == 'RedHat'
        it { should create_service('autofs') }
      else
        it { should create_service('autofs') }
      end
    end
  end
end

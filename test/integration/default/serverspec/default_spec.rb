require 'spec_helper'

describe 'chef-compliance-demo::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('chef-compliance') do
    it { should be_installed }
  end
end

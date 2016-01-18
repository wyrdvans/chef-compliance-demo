#
# Cookbook Name:: chef-compliance-demo
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef-compliance-demo::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'downloads chef-compliance package' do
      expect(chef_run).to create_remote_file('/tmp/chef-compliance_0.9.9-1_amd64.deb')
    end

    it 'install the chef-compliance package' do
      expect(chef_run).to install_package('chef-compliance')
                           .with(source: '/tmp/chef-compliance_0.9.9-1_amd64.deb',
                                 provider: Chef::Provider::Package::Dpkg
                                )
    end
  end
end

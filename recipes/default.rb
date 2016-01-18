#
# Cookbook Name:: chef-compliance-demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
remote_file node['chef-compliance-demo']['pkg_loc'] do
  source 'https://packagecloud.io/chef/stable/packages/ubuntu/trusty/chef-compliance_0.9.9-1_amd64.deb/download'
  action :create
end

package 'chef-compliance' do
  source node['chef-compliance-demo']['pkg_loc']
  provider Chef::Provider::Package::Dpkg
  action :install
end

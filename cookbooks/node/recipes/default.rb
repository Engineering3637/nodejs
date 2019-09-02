#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


apt_update "update_sources" do
  action :update
end

include_recipe 'apt'
include_recipe 'nodejs'
nodejs_npm 'pm2'

execute 'npm install' do
  command 'sudo npm install'
end

#
# Cookbook:: node_sample
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#package 'httpd'
#imports
include_recipe 'nodejs'
include_recipe 'apt'
#npm installs
include_recipe 'pm2'
nodejs_npm 'pm2'
#packages apt-get
package 'nginx'
#package 'npm'
#package 'pm2'
service 'nginx' do
  action :start
end
service "nginx" do
  action :enable
end
# package 'nodejs'
# package 'npm'
# package 'pm2'
# polymorph method
# service 'nginx' do
# action([:start, :enable])
#end

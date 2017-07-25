#
# Cookbook:: lcd_webserver
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.
#
include_recipe 'lcd_webserver::users'

hello_httpd 'greet world' do
  greeting "Hello"
  action :create
end

#package node['app']['language'] do
 # action :install
#end


execute 'systemctl restart httpd' do
  only_if { index_exists? }
end

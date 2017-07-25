#
# Cookbook:: lcd_webserver
# Recipe:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.
#
include_recipe 'lcd_webserver::users'

package 'httpd'
package 'net-tools'

service 'httpd' do
        action [:enable,:start]
end

#package 'net-tools' do
 # action :install
#end

#package 'httpd' do 
 # action :install 
#end 

package platform_package_httpd

service platform_service_httpd  do 
  action [:enable, :start] 
end

#package node['app']['language'] do
 # action :install
#end

template '/var/www/html/index.html' do
  mode '0644'
  owner 'apache'
  group 'apache'
  variables(
    greeting_scope: 'World',
    greeting: node['greeting'],
    fqdn: node['fqdn']
  )
end

execute 'systemctl restart httpd' do
  only_if { index_exists? }
end


#include_recipe 'lcd_webserver::users'


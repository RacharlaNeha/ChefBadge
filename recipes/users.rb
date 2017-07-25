#
# Cookbook:: lcd_webserver
# Recipe:: users
#
# Copyright:: 2017, Student Name, All Rights Reserved.
#
#user 'webadmin' do
# action :create
#  comment 'A webadmin user'
#  uid '1234'
#end
#group 'developers'
#
#user 'webadmin' do
#  action :create 
#    uid '1020'
#      gid 'developers'
#        home '/home/webadmin'
#          shell '/bin/bash'
 #         end
group 'developers'

user 'webadmin' do
  action :create 
  uid '1020'
  gid 'developers'
  home '/home/webadmin'
  shell '/bin/bash'
end

#user 'webadmin' do
# action :create
# group 'developers'
#end

#group 'developers' do  
# action :create
 #members 'webadmin'
 #append true
#end


#
# Cookbook:: lcd_webserver
# Spec:: default
#
# Copyright:: 2017, Student Name, All Rights Reserved.

require 'spec_helper'

describe 'lcd_webserver::users' do
  context 'Centos' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.3.1611')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'creates the group' do
      expect(chef_run).to create_group('developers')
    end

    it 'creates the user' do
      expect(chef_run).to create_user('webadmin').with(group:'developers')
    end
  end
end

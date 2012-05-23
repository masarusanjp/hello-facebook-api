require 'rubygems'
require 'oauth'
require 'facebook_oauth'
require 'yaml'

appconf = YAML.load_file('conf/application.yaml')

client = FacebookOAuth::Client.new(
  :application_id => appconf['appid'],
  :application_secret => appconf['app_secret'],
  :callback => appconf['callback']
);

print client.authorize_url(:scope => 'read_mailbox, create_event, user_groups, user_events')

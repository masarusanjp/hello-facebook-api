require 'rubygems'
require 'oauth'
require 'facebook_oauth'
require 'yaml'



appconf = YAML.load('conf/application.yaml')
callback = "http:///redirect.url"

client = FacebookOAuth::Client.new(
  :application_id => appconf['appid'],
  :application_secret => appconf['app_secret'],
  :callback => callback
);


print client.authorize_url(:scope => 'offline_access, publish_stream, user_status, read_stream');

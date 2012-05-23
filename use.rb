require 'rubygems'
require 'oauth'
require 'facebook_oauth'
require 'yaml'

appconf = YAML.load_file('conf/application.yaml')

client = FacebookOAuth::Client.new(
  :application_id => appconf['appid'],
  :application_secret => appconf['app_secret'],
  :callback => appconf['callback'],
  :token => appconf['token']
)

print client.me.info

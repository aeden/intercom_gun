require 'httparty'

class Intercom
  include HTTParty
  base_uri "https://api.intercom.io"
  basic_auth ENV['INTERCOM_APP_ID'], ENV['INTERCOM_APP_KEY'] 
  debug_output $stdout
end

require 'sinatra'
require 'hashie'
require 'multi_json'
require './intercom'

get '/' do
  "Usage instructions will appear here"
end

post '/:appid/messages' do
  if params[:appid] == 'dnsimple'
    message = Hashie::Mash.new(
      :from => params[:"from"],
      :subject => params[:"subject"],
      :body => params[:"stripped-text"]
    )
    res = Intercom.post("/v1/users/message_threads", :body => MultiJson.encode({
      :email => message.from,
      :body => message.body
    }))
  end
end

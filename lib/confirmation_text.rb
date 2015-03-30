require 'rubygems'
require 'twilio-ruby'

class TakeawayText

  attr_reader :send_text

  def send_text customer_number, customer_order

    account_sid = 'ACa0258a938d0945406ae80b5787dbb665'
    auth_token = 'f643c0465f75ffe519c665a895ad0d9e'
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => "Thank you! Your order was placed and will be delivered within one hour",
    :to => "++447943100432",
    :from => "+441296827007")

    puts message.sid

  end

end
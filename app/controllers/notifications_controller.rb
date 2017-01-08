class NotificationsController < ApplicationController
#   def send_message(phone_number, alert_message, image_url)
#   twilio_number = ENV['TWILIO_NUMBER']
#   client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
#
#   client.messages.create(
#     from: twilio_number,
#     to:   phone_number,
#     body: alert_message,
#   )
# end

account_sid = 'ACf78e992c337d1b783a312053a40c2b0d'
auth_token = '3e49d5f8fa16a3c2a043317478e1df27'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.messages.create(
  from: '+18057197477',
  to: '+18052088160',
  body: 'Testing SMS with Twilio!'
)


end

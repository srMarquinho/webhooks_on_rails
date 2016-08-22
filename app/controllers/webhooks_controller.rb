class WebhooksController < ApplicationController

  def index
    @webhook = Webhook.new
    @number_of_emails_sent = @webhook.number_of_events('send')
    @number_of_emails_opened = @webhook.number_of_events('open')
    @number_of_clicks = @webhook.number_of_events('click')
    @email_types = @webhook.email_types
  end

  def create
    data = JSON.parse(request.body.read)
    Webhook.create(address: data['Address'],
                   email_type: data['EmailType'],
                   event: data['Event'],
                   timestamp: data['Timestamp'])
    head 200
  end
end

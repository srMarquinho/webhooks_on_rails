class WebhooksController < ApplicationController

  def index
    webhook = Webhook.new
    @number_of_emails_sent = webhook.number_of_events_by('send')
    @number_of_emails_opened = webhook.number_of_events_by('open')
    @number_of_clicks = webhook.number_of_events_by('click')
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

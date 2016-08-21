class WebhooksController < ApplicationController
  
  def index
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

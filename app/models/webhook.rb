class Webhook < ApplicationRecord

  def number_of_events_by(event)
    Webhook.where(event: event).count
  end
end

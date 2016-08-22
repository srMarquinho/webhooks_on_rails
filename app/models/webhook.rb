class Webhook < ApplicationRecord

  def number_of_events(event)
    Webhook.where(event: event).count
  end

  def number_of_email_type(email_type)
    Webhook.where(email_type: email_type).count
  end

  def rate_between(email_type, event)
    ((number_of_events(event) / 100.00) * number_of_email_type(email_type)).round(2)
  end

  def email_types
    Webhook.distinct.pluck(:email_type)
  end
end

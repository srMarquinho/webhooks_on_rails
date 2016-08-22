require 'rails_helper'

RSpec.describe Webhook, type: :model do
  subject(:webhook) {described_class.new}
  let!(:hook) do webhook_create end

  it 'saves address, email_type, event and timestamp to database' do
    expect(webhook_where).to exist
  end

  it '#number_of_events(event)' do
    expect(webhook.number_of_events('send')).to eq 2
  end

  it '#number_of_email_type(email_type)' do
    expect(webhook.number_of_email_type('Order')).to eq 1
  end

  it '#rate_between(email_type, event)' do
    expect(webhook.rate_between('Order', 'send')).to eq 0.02
  end

  it '#email_types' do
    expected = described_class.distinct.pluck(:email_type)
    expect(webhook.email_types).to eq expected
  end
end

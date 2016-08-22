require 'rails_helper'

RSpec.describe Webhook, type: :model do
  subject(:webhook) {described_class.new}
  let!(:hook) do webhook_create end

  it 'saves address, email_type, event and timestamp to database' do
    expect(webhook_where).to exist
  end

  it '#number_of_events_by(event)' do
    expect(webhook.number_of_events_by('send')).to eq 2
  end
end

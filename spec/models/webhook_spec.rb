require 'rails_helper'

RSpec.describe Webhook, type: :model do
  let!(:hook) do
    Webhook.create(
      address: 'marco@lostmy.name',
      email_type: 'Shipment',
      event: 'send',
      timestamp: 1_432_820_696
    )
  end

  describe 'database' do
    it 'should save address, email_type, event and timestamp' do
      expect(Webhook.where(
               address: 'marco@lostmy.name',
               email_type: 'Shipment',
               event: 'send',
               timestamp: 1_432_820_696
      )).to exist
    end
  end
end

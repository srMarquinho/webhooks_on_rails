require 'rails_helper'

RSpec.describe WebhooksController, type: :request do
  describe 'request' do
    it 'parses JSON' do
      post webhooks_path, params: { 'Address': 'marco@lostmy.name',
                  'EmailType': 'Shipment',
                  'Event': 'send',
                  'Timestamp': 1_432_820_696 }.to_json
      expect(status).to eq(200)
    end
    it 'stores in the batabase' do
      # expect{ post webhooks_path, json_params }.to change(Webhook, :count).by(1)
    end
  end
end

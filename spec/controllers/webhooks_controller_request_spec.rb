require 'rails_helper'

RSpec.describe WebhooksController, type: :request do
  describe 'request' do
    
    it 'parses JSON' do
      post webhooks_path, params: json_params
      expect(status).to eq(200)
    end

    it 'stores in the batabase' do
      expect { post webhooks_path, params: json_params }.to change(Webhook, :count).by(1)
    end
  end
end

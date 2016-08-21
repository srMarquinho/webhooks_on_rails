require 'rails_helper'

RSpec.describe Webhook, type: :model do
  let!(:hook) do webhook_create end
  describe 'database' do

    it 'should save address, email_type, event and timestamp' do
      expect(webhook_where).to exist
    end
  end
end

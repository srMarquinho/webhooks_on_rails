require 'rails_helper'

feature 'FEATURE: "/"' do
  before(:each) do
    webhook_create
    visit '/'
  end

  feature 'show total' do
    scenario 'number of emails sent' do
      expect(page).to have_content 'Number of emails sent: 2'
    end

    scenario 'number of emails opened' do
      expect(page).to have_content 'Number of emails opened: 2'
    end

    scenario 'number of clicks' do
      expect(page).to have_content 'Number of clicks: 1'
    end
  end

  feature 'show rate by email type' do
    scenario '"Order" open and click rate' do
      expect(page).to have_content 'Order OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario '"Shipment" open and click rate' do
      expect(page).to have_content 'Shipment OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario '"Get a book discount" open and click rate' do
      expect(page).to have_content 'Get a book discount OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario 'order "User confirmation" and click rate' do
      expect(page).to have_content 'User confirmation OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario '"Refer a friend" open and click rate' do
      expect(page).to have_content 'Refer a friend OPEN rate: 0.02% CLICK rate: 0.01%'
    end
  end
end

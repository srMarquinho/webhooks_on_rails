require 'rails_helper'

  feature 'FEATURE: "/"' do
    before(:each) do
      webhook_create
      visit '/'
    end

    scenario 'shows number of emails sent' do
      expect(page).to have_content 'Number of emails sent: 2'
    end

    scenario 'shows number of emails sent' do
      expect(page).to have_content 'Number of emails opened: 2'
    end

    scenario 'shows open rate for each email type' do
      expect(page).to have_content 'Number of clicks: 1'
    end

    scenario 'shows "Order" open and click rate' do
      expect(page).to have_content 'Order OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario 'shows "Shipment" open and click rate' do
      expect(page).to have_content 'Shipment OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario 'shows "Get a book discount" open and click rate' do
      expect(page).to have_content 'Get a book discount OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario 'shows order "User confirmation" and click rate' do
      expect(page).to have_content 'User confirmation OPEN rate: 0.02% CLICK rate: 0.01%'
    end

    scenario 'shows "Refer a friend" open and click rate' do
      expect(page).to have_content 'Refer a friend OPEN rate: 0.02% CLICK rate: 0.01%'
    end
  end

require 'rails_helper'

feature '#index' do
  before(:each) do
    webhook_create
    visit '/'
  end

  scenario 'dilsplays number of emails sent' do
    expect(page).to have_content 'Number of emails sent: 2'
  end

  scenario 'dilsplays number of emails sent' do
    expect(page).to have_content 'Number of emails opened: 2'
  end

  scenario 'dilsplays number of emails opened' do
    expect(page).to have_content 'Number of clicks: 1'
  end
end

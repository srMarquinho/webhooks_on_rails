def json_params
  { 'Address': 'marco@lostmy.name',
    'EmailType': 'Shipment',
    'Event': 'send',
    'Timestamp': 1_432_820_696 }.to_json
end

def webhook_where
  Webhook.where(
  address: 'marco@lostmy.name',
  email_type: 'Order',
  event: 'open',
  timestamp: 1_432_820_696
  )
end

def webhook_create
  Webhook.create(
    address: 'marco@lostmy.name',
    email_type: 'Order',
    event: 'open',
    timestamp: 1_432_820_696
  )
  Webhook.create(
    address: 'marco1@lostmy.name',
    email_type: 'UserConfirmation',
    event: 'send',
    timestamp: 1_432_820_696
  )
  Webhook.create(
    address: 'marco2@lostmy.name',
    email_type: 'Shipment',
    event: 'click',
    timestamp: 1_432_820_696
  )
  Webhook.create(
    address: 'marco3@lostmy.name',
    email_type: 'ReferAFriend',
    event: 'send',
    timestamp: 1_432_820_696
  )
  Webhook.create(
    address: 'marco4@lostmy.name',
    email_type: 'GetABookDiscount',
    event: 'open',
    timestamp: 1_432_820_696
  )
end

def json_params
  { 'Address': 'marco@lostmy.name',
    'EmailType': 'Shipment',
    'Event': 'send',
    'Timestamp': 1_432_820_696 }.to_json
end

def webhook_create
  Webhook.create(
    address: 'marco@lostmy.name',
    email_type: 'Shipment',
    event: 'send',
    timestamp: 1_432_820_696
  )
end

def webhook_where
  Webhook.where(
           address: 'marco@lostmy.name',
           email_type: 'Shipment',
           event: 'send',
           timestamp: 1_432_820_696
  )
end

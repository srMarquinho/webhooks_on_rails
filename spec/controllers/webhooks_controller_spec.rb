require 'rails_helper'

RSpec.describe WebhooksController, type: :controller do
  describe 'routes' do
    
    it 'get webhooks#index' do
      expect(get: '/webhooks').to route_to(controller: 'webhooks', action: 'index')
    end

    it 'post webhooks#create' do
      expect(post: '/webhooks').to route_to(controller: 'webhooks', action: 'create')
    end

    it 'does not routes to new, edit, show, update or destroy' do
      expect(post: '/webhooks').not_to route_to(controller: 'webhooks', action: 'new')
      expect(get: '/webhooks').not_to route_to(controller: 'webhooks', action: 'edit')
      expect(post: '/webhooks').not_to route_to(controller: 'webhooks', action: 'show')
      expect(post: '/webhooks').not_to route_to(controller: 'webhooks', action: 'update')
      expect(post: '/webhooks').not_to route_to(controller: 'webhooks', action: 'destroy')
    end
  end
end

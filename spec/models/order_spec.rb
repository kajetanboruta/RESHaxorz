require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '.after_create' do
    it 'publishes an event OrderPlaced through event_store' do
      create(:order, description: 'abc')

      expect(Rails.configuration.event_store).to have_published(an_event(OrderPlaced).with_data(description: 'abc'))
    end
  end
end

class Order < ApplicationRecord
  after_create :publish_order

  def publish_order
    event = OrderPlaced.new(data: { id: self.id, description: self.description })
    Rails.configuration.event_store.publish(event)
  end
end

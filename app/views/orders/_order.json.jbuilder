json.extract! order, :id, :status, :quantity, :customer_id, :item_id, :created_at, :updated_at
json.url order_url(order, format: :json)

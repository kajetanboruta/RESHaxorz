class Order < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  has_one :item
end

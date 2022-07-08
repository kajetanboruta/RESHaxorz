class TodoItem < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :cc, class_name: 'User'
end

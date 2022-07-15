FactoryBot.define do
  factory :order do
    status { false }
    quantity { 1 }
    customer { nil }
    item { nil }
  end
end

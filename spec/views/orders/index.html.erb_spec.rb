require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        status: false,
        quantity: 2,
        customer: nil,
        item: nil
      ),
      Order.create!(
        status: false,
        quantity: 2,
        customer: nil,
        item: nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      status: false,
      quantity: 1,
      customer: nil,
      item: nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[quantity]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[item_id]"
    end
  end
end

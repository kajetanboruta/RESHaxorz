require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      status: false,
      quantity: 1,
      customer: nil,
      item: nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[quantity]"

      assert_select "input[name=?]", "order[customer_id]"

      assert_select "input[name=?]", "order[item_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "todo_items/index", type: :view do
  before(:each) do
    assign(:todo_items, [
      TodoItem.create!(
        status: false,
        description: "Description",
        user: nil,
        user: nil
      ),
      TodoItem.create!(
        status: false,
        description: "Description",
        user: nil,
        user: nil
      )
    ])
  end

  it "renders a list of todo_items" do
    render
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "todo_items/new", type: :view do
  before(:each) do
    assign(:todo_item, TodoItem.new(
      status: false,
      description: "MyString",
      user: nil,
      user: nil
    ))
  end

  it "renders new todo_item form" do
    render

    assert_select "form[action=?][method=?]", todo_items_path, "post" do

      assert_select "input[name=?]", "todo_item[status]"

      assert_select "input[name=?]", "todo_item[description]"

      assert_select "input[name=?]", "todo_item[user_id]"

      assert_select "input[name=?]", "todo_item[user_id]"
    end
  end
end

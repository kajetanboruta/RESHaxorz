require 'rails_helper'

RSpec.describe "todo_items/show", type: :view do
  before(:each) do
    @todo_item = assign(:todo_item, TodoItem.create!(
      status: false,
      description: "Description",
      user: nil,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

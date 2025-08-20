require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        desc: "Desc",
        sequence: 2
      ),
      Todo.create!(
        desc: "Desc",
        sequence: 2
      )
    ])
  end

  it "renders a list of todos" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Desc".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

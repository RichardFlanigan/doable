require 'rails_helper'

RSpec.describe "todos/edit", type: :view do
  let(:todo) {
    Todo.create!(
      desc: "MyString",
      sequence: 1
    )
  }

  before(:each) do
    assign(:todo, todo)
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(todo), "post" do

      assert_select "input[name=?]", "todo[desc]"

      assert_select "input[name=?]", "todo[sequence]"
    end
  end
end

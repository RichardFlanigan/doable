require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      desc: "MyString",
      sequence: 1
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input[name=?]", "todo[desc]"

      assert_select "input[name=?]", "todo[sequence]"
    end
  end
end

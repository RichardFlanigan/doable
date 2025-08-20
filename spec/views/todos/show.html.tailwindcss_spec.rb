require 'rails_helper'

RSpec.describe "todos/show", type: :view do
  before(:each) do
    assign(:todo, Todo.create!(
      desc: "Desc",
      sequence: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Desc/)
    expect(rendered).to match(/2/)
  end
end

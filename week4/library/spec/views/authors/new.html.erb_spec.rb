require 'rails_helper'

RSpec.describe "authors/new", type: :view do
  before(:each) do
    assign(:author, Author.new(
      fname: "MyString",
      lname: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input[name=?]", "author[fname]"

      assert_select "input[name=?]", "author[lname]"

      assert_select "input[name=?]", "author[phone]"
    end
  end
end

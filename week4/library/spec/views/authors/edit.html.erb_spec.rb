require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      fname: "MyString",
      lname: "MyString",
      phone: "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input[name=?]", "author[fname]"

      assert_select "input[name=?]", "author[lname]"

      assert_select "input[name=?]", "author[phone]"
    end
  end
end

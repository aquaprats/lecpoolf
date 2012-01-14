require 'spec_helper'

describe "books/new.html.erb" do
  before(:each) do
    assign(:book, stub_model(Book,
      :user_id => 1,
      :bname => "MyString",
      :author => "MyString",
      :edition => "MyString",
      :cn => "MyString",
      :category => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => books_path, :method => "post" do
      assert_select "input#book_user_id", :name => "book[user_id]"
      assert_select "input#book_bname", :name => "book[bname]"
      assert_select "input#book_author", :name => "book[author]"
      assert_select "input#book_edition", :name => "book[edition]"
      assert_select "input#book_cn", :name => "book[cn]"
      assert_select "input#book_category", :name => "book[category]"
    end
  end
end

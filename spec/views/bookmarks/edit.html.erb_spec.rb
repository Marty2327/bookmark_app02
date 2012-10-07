require 'spec_helper'

describe "bookmarks/edit" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :URL => "MyString",
      :name => "MyString",
      :date => "MyString"
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookmarks_path(@bookmark), :method => "post" do
      assert_select "input#bookmark_URL", :name => "bookmark[URL]"
      assert_select "input#bookmark_name", :name => "bookmark[name]"
      assert_select "input#bookmark_date", :name => "bookmark[date]"
    end
  end
end

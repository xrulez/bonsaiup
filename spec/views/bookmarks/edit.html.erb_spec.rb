require 'spec_helper'

describe "bookmarks/edit" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :index => "MyString",
      :edit => "MyString",
      :new => "MyString"
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookmarks_path(@bookmark), :method => "post" do
      assert_select "input#bookmark_index", :name => "bookmark[index]"
      assert_select "input#bookmark_edit", :name => "bookmark[edit]"
      assert_select "input#bookmark_new", :name => "bookmark[new]"
    end
  end
end

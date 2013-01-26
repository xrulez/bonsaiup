require 'spec_helper'

describe "bookmarks/index" do
  before(:each) do
    assign(:bookmarks, [
      stub_model(Bookmark,
        :index => "Index",
        :edit => "Edit",
        :new => "New"
      ),
      stub_model(Bookmark,
        :index => "Index",
        :edit => "Edit",
        :new => "New"
      )
    ])
  end

  it "renders a list of bookmarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
  end
end

require 'spec_helper'

describe "keywords/edit" do
  before(:each) do
    @keyword = assign(:keyword, stub_model(Keyword,
      :skillId => 1,
      :keyword => "MyString"
    ))
  end

  it "renders the edit keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => keywords_path(@keyword), :method => "post" do
      assert_select "input#keyword_skillId", :name => "keyword[skillId]"
      assert_select "input#keyword_keyword", :name => "keyword[keyword]"
    end
  end
end

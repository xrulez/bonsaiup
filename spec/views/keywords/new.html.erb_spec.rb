require 'spec_helper'

describe "keywords/new" do
  before(:each) do
    assign(:keyword, stub_model(Keyword,
      :skillId => 1,
      :keyword => "MyString"
    ).as_new_record)
  end

  it "renders new keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => keywords_path, :method => "post" do
      assert_select "input#keyword_skillId", :name => "keyword[skillId]"
      assert_select "input#keyword_keyword", :name => "keyword[keyword]"
    end
  end
end

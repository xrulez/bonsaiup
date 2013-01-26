require 'spec_helper'

describe "keywords/index" do
  before(:each) do
    assign(:keywords, [
      stub_model(Keyword,
        :skillId => 1,
        :keyword => "Keyword"
      ),
      stub_model(Keyword,
        :skillId => 1,
        :keyword => "Keyword"
      )
    ])
  end

  it "renders a list of keywords" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Keyword".to_s, :count => 2
  end
end

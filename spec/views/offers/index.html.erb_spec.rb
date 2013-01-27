require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :skill_id => 1,
        :user_id => 2,
        :place => "Place",
        :time => "Time"
      ),
      stub_model(Offer,
        :skill_id => 1,
        :user_id => 2,
        :place => "Place",
        :time => "Time"
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
  end
end

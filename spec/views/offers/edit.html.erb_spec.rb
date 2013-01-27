require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :skill_id => 1,
      :user_id => 1,
      :place => "MyString",
      :time => "MyString"
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "input#offer_skill_id", :name => "offer[skill_id]"
      assert_select "input#offer_user_id", :name => "offer[user_id]"
      assert_select "input#offer_place", :name => "offer[place]"
      assert_select "input#offer_time", :name => "offer[time]"
    end
  end
end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

end

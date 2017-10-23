require 'test_helper'

class Erb2viewControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get top" do
    get :top
    assert_response :success
  end

  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

end

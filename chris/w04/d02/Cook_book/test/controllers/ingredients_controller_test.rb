require 'test_helper'

class IngredientsControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get measurement" do
    get :measurement
    assert_response :success
  end

  test "should get cost" do
    get :cost
    assert_response :success
  end

  test "should get image" do
    get :image
    assert_response :success
  end

end

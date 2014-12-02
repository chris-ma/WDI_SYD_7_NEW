require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  test "should get name" do
    get :name
    assert_response :success
  end

  test "should get course" do
    get :course
    assert_response :success
  end

  test "should get cooktime" do
    get :cooktime
    assert_response :success
  end

  test "should get servingsize" do
    get :servingsize
    assert_response :success
  end

  test "should get instructions" do
    get :instructions
    assert_response :success
  end

  test "should get image" do
    get :image
    assert_response :success
  end

end

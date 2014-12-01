require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get title" do
    get :title
    assert_response :success
  end

  test "should get cuisine" do
    get :cuisine
    assert_response :success
  end

  test "should get chef" do
    get :chef
    assert_response :success
  end

  test "should get image" do
    get :image
    assert_response :success
  end

end

require 'test_helper'

class TodoControllerTest < ActionController::TestCase
  test "should get text:string" do
    get :text:string
    assert_response :success
  end

  test "should get note:text" do
    get :note:text
    assert_response :success
  end

  test "should get completed:boolean" do
    get :completed:boolean
    assert_response :success
  end

  test "should get timestamp:datetime" do
    get :timestamp:datetime
    assert_response :success
  end

end

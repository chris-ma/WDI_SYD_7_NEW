require 'test_helper'

class TodotasksControllerTest < ActionController::TestCase
  setup do
    @todotask = todotasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todotasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todotask" do
    assert_difference('Todotask.count') do
      post :create, todotask: { completed: @todotask.completed, notes: @todotask.notes, text: @todotask.text, timestamp: @todotask.timestamp }
    end

    assert_redirected_to todotask_path(assigns(:todotask))
  end

  test "should show todotask" do
    get :show, id: @todotask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todotask
    assert_response :success
  end

  test "should update todotask" do
    patch :update, id: @todotask, todotask: { completed: @todotask.completed, notes: @todotask.notes, text: @todotask.text, timestamp: @todotask.timestamp }
    assert_redirected_to todotask_path(assigns(:todotask))
  end

  test "should destroy todotask" do
    assert_difference('Todotask.count', -1) do
      delete :destroy, id: @todotask
    end

    assert_redirected_to todotasks_path
  end
end

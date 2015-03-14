require 'test_helper'

class TasketsControllerTest < ActionController::TestCase
  setup do
    @tasket = taskets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasket" do
    assert_difference('Tasket.count') do
      post :create, tasket: { name: @tasket.name, user_id: @tasket.user_id }
    end

    assert_redirected_to tasket_path(assigns(:tasket))
  end

  test "should show tasket" do
    get :show, id: @tasket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasket
    assert_response :success
  end

  test "should update tasket" do
    patch :update, id: @tasket, tasket: { name: @tasket.name, user_id: @tasket.user_id }
    assert_redirected_to tasket_path(assigns(:tasket))
  end

  test "should destroy tasket" do
    assert_difference('Tasket.count', -1) do
      delete :destroy, id: @tasket
    end

    assert_redirected_to taskets_path
  end
end

require 'test_helper'

class MicroposesControllerTest < ActionController::TestCase
  setup do
    @micropose = microposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropose" do
    assert_difference('Micropose.count') do
      post :create, micropose: { content: @micropose.content, user_id: @micropose.user_id }
    end

    assert_redirected_to micropose_path(assigns(:micropose))
  end

  test "should show micropose" do
    get :show, id: @micropose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropose
    assert_response :success
  end

  test "should update micropose" do
    put :update, id: @micropose, micropose: { content: @micropose.content, user_id: @micropose.user_id }
    assert_redirected_to micropose_path(assigns(:micropose))
  end

  test "should destroy micropose" do
    assert_difference('Micropose.count', -1) do
      delete :destroy, id: @micropose
    end

    assert_redirected_to microposes_path
  end
end

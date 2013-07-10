require 'test_helper'

class InventoryUsersControllerTest < ActionController::TestCase
  setup do
    @inventory_user = inventory_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_user" do
    assert_difference('InventoryUser.count') do
      post :create, inventory_user: { qty: @inventory_user.qty }
    end

    assert_redirected_to inventory_user_path(assigns(:inventory_user))
  end

  test "should show inventory_user" do
    get :show, id: @inventory_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_user
    assert_response :success
  end

  test "should update inventory_user" do
    put :update, id: @inventory_user, inventory_user: { qty: @inventory_user.qty }
    assert_redirected_to inventory_user_path(assigns(:inventory_user))
  end

  test "should destroy inventory_user" do
    assert_difference('InventoryUser.count', -1) do
      delete :destroy, id: @inventory_user
    end

    assert_redirected_to inventory_users_path
  end
end

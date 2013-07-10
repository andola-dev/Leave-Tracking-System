require 'test_helper'

class InventorySkuGroupsControllerTest < ActionController::TestCase
  setup do
    @inventory_sku_group = inventory_sku_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_sku_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_sku_group" do
    assert_difference('InventorySkuGroup.count') do
      post :create, inventory_sku_group: { name: @inventory_sku_group.name }
    end

    assert_redirected_to inventory_sku_group_path(assigns(:inventory_sku_group))
  end

  test "should show inventory_sku_group" do
    get :show, id: @inventory_sku_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_sku_group
    assert_response :success
  end

  test "should update inventory_sku_group" do
    put :update, id: @inventory_sku_group, inventory_sku_group: { name: @inventory_sku_group.name }
    assert_redirected_to inventory_sku_group_path(assigns(:inventory_sku_group))
  end

  test "should destroy inventory_sku_group" do
    assert_difference('InventorySkuGroup.count', -1) do
      delete :destroy, id: @inventory_sku_group
    end

    assert_redirected_to inventory_sku_groups_path
  end
end

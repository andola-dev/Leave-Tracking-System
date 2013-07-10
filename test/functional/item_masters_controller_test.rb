require 'test_helper'

class ItemMastersControllerTest < ActionController::TestCase
  setup do
    @item_master = item_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_master" do
    assert_difference('ItemMaster.count') do
      post :create, item_master: { description: @item_master.description, item_id: @item_master.item_id }
    end

    assert_redirected_to item_master_path(assigns(:item_master))
  end

  test "should show item_master" do
    get :show, id: @item_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_master
    assert_response :success
  end

  test "should update item_master" do
    put :update, id: @item_master, item_master: { description: @item_master.description, item_id: @item_master.item_id }
    assert_redirected_to item_master_path(assigns(:item_master))
  end

  test "should destroy item_master" do
    assert_difference('ItemMaster.count', -1) do
      delete :destroy, id: @item_master
    end

    assert_redirected_to item_masters_path
  end
end

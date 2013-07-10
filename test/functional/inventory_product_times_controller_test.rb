require 'test_helper'

class InventoryProductTimesControllerTest < ActionController::TestCase
  setup do
    @inventory_product_time = inventory_product_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_product_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_product_time" do
    assert_difference('InventoryProductTime.count') do
      post :create, inventory_product_time: { avg_time: @inventory_product_time.avg_time, estimate_time: @inventory_product_time.estimate_time, qty: @inventory_product_time.qty, rg_sku: @inventory_product_time.rg_sku, work_center: @inventory_product_time.work_center }
    end

    assert_redirected_to inventory_product_time_path(assigns(:inventory_product_time))
  end

  test "should show inventory_product_time" do
    get :show, id: @inventory_product_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_product_time
    assert_response :success
  end

  test "should update inventory_product_time" do
    put :update, id: @inventory_product_time, inventory_product_time: { avg_time: @inventory_product_time.avg_time, estimate_time: @inventory_product_time.estimate_time, qty: @inventory_product_time.qty, rg_sku: @inventory_product_time.rg_sku, work_center: @inventory_product_time.work_center }
    assert_redirected_to inventory_product_time_path(assigns(:inventory_product_time))
  end

  test "should destroy inventory_product_time" do
    assert_difference('InventoryProductTime.count', -1) do
      delete :destroy, id: @inventory_product_time
    end

    assert_redirected_to inventory_product_times_path
  end
end

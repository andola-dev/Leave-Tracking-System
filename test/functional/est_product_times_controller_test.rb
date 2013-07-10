require 'test_helper'

class EstProductTimesControllerTest < ActionController::TestCase
  setup do
    @est_product_time = est_product_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:est_product_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create est_product_time" do
    assert_difference('EstProductTime.count') do
      post :create, est_product_time: { per_100: @est_product_time.per_100, per_item: @est_product_time.per_item, per_variant: @est_product_time.per_variant, setup: @est_product_time.setup, sku_group: @est_product_time.sku_group, wc_code: @est_product_time.wc_code }
    end

    assert_redirected_to est_product_time_path(assigns(:est_product_time))
  end

  test "should show est_product_time" do
    get :show, id: @est_product_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @est_product_time
    assert_response :success
  end

  test "should update est_product_time" do
    put :update, id: @est_product_time, est_product_time: { per_100: @est_product_time.per_100, per_item: @est_product_time.per_item, per_variant: @est_product_time.per_variant, setup: @est_product_time.setup, sku_group: @est_product_time.sku_group, wc_code: @est_product_time.wc_code }
    assert_redirected_to est_product_time_path(assigns(:est_product_time))
  end

  test "should destroy est_product_time" do
    assert_difference('EstProductTime.count', -1) do
      delete :destroy, id: @est_product_time
    end

    assert_redirected_to est_product_times_path
  end
end

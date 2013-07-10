require 'test_helper'

class ProductMastersControllerTest < ActionController::TestCase
  setup do
    @product_master = product_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_master" do
    assert_difference('ProductMaster.count') do
      post :create, product_master: { alt_product_code: @product_master.alt_product_code, alt_product_sub_comp: @product_master.alt_product_sub_comp, alt_sub_comp: @product_master.alt_sub_comp, description: @product_master.description, inventory_sub_comp: @product_master.inventory_sub_comp, is_alt_code_available: @product_master.is_alt_code_available, is_inventory: @product_master.is_inventory, options: @product_master.options, product_code: @product_master.product_code, product_type: @product_master.product_type, style: @product_master.style }
    end

    assert_redirected_to product_master_path(assigns(:product_master))
  end

  test "should show product_master" do
    get :show, id: @product_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_master
    assert_response :success
  end

  test "should update product_master" do
    put :update, id: @product_master, product_master: { alt_product_code: @product_master.alt_product_code, alt_product_sub_comp: @product_master.alt_product_sub_comp, alt_sub_comp: @product_master.alt_sub_comp, description: @product_master.description, inventory_sub_comp: @product_master.inventory_sub_comp, is_alt_code_available: @product_master.is_alt_code_available, is_inventory: @product_master.is_inventory, options: @product_master.options, product_code: @product_master.product_code, product_type: @product_master.product_type, style: @product_master.style }
    assert_redirected_to product_master_path(assigns(:product_master))
  end

  test "should destroy product_master" do
    assert_difference('ProductMaster.count', -1) do
      delete :destroy, id: @product_master
    end

    assert_redirected_to product_masters_path
  end
end

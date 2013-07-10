require 'test_helper'

class RosetteHeadCompsControllerTest < ActionController::TestCase
  setup do
    @rosette_head_comp = rosette_head_comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosette_head_comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rosette_head_comp" do
    assert_difference('RosetteHeadComp.count') do
      post :create, rosette_head_comp: { alt_sub_comp: @rosette_head_comp.alt_sub_comp, inventory_product_code: @rosette_head_comp.inventory_product_code, inventroy_sub_comp: @rosette_head_comp.inventroy_sub_comp }
    end

    assert_redirected_to rosette_head_comp_path(assigns(:rosette_head_comp))
  end

  test "should show rosette_head_comp" do
    get :show, id: @rosette_head_comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rosette_head_comp
    assert_response :success
  end

  test "should update rosette_head_comp" do
    put :update, id: @rosette_head_comp, rosette_head_comp: { alt_sub_comp: @rosette_head_comp.alt_sub_comp, inventory_product_code: @rosette_head_comp.inventory_product_code, inventroy_sub_comp: @rosette_head_comp.inventroy_sub_comp }
    assert_redirected_to rosette_head_comp_path(assigns(:rosette_head_comp))
  end

  test "should destroy rosette_head_comp" do
    assert_difference('RosetteHeadComp.count', -1) do
      delete :destroy, id: @rosette_head_comp
    end

    assert_redirected_to rosette_head_comps_path
  end
end

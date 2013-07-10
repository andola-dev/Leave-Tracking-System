require 'test_helper'

class RosetteRibbonCompsControllerTest < ActionController::TestCase
  setup do
    @rosette_ribbon_comp = rosette_ribbon_comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosette_ribbon_comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rosette_ribbon_comp" do
    assert_difference('RosetteRibbonComp.count') do
      post :create, rosette_ribbon_comp: { alt_sub_comp: @rosette_ribbon_comp.alt_sub_comp, inventory_product_code: @rosette_ribbon_comp.inventory_product_code, inventroy_sub_comp: @rosette_ribbon_comp.inventroy_sub_comp }
    end

    assert_redirected_to rosette_ribbon_comp_path(assigns(:rosette_ribbon_comp))
  end

  test "should show rosette_ribbon_comp" do
    get :show, id: @rosette_ribbon_comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rosette_ribbon_comp
    assert_response :success
  end

  test "should update rosette_ribbon_comp" do
    put :update, id: @rosette_ribbon_comp, rosette_ribbon_comp: { alt_sub_comp: @rosette_ribbon_comp.alt_sub_comp, inventory_product_code: @rosette_ribbon_comp.inventory_product_code, inventroy_sub_comp: @rosette_ribbon_comp.inventroy_sub_comp }
    assert_redirected_to rosette_ribbon_comp_path(assigns(:rosette_ribbon_comp))
  end

  test "should destroy rosette_ribbon_comp" do
    assert_difference('RosetteRibbonComp.count', -1) do
      delete :destroy, id: @rosette_ribbon_comp
    end

    assert_redirected_to rosette_ribbon_comps_path
  end
end

require 'test_helper'

class RosetteButtonCompsControllerTest < ActionController::TestCase
  setup do
    @rosette_button_comp = rosette_button_comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosette_button_comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rosette_button_comp" do
    assert_difference('RosetteButtonComp.count') do
      post :create, rosette_button_comp: { alt_sub_comp: @rosette_button_comp.alt_sub_comp, inventory_product_code: @rosette_button_comp.inventory_product_code, inventroy_sub_comp: @rosette_button_comp.inventroy_sub_comp }
    end

    assert_redirected_to rosette_button_comp_path(assigns(:rosette_button_comp))
  end

  test "should show rosette_button_comp" do
    get :show, id: @rosette_button_comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rosette_button_comp
    assert_response :success
  end

  test "should update rosette_button_comp" do
    put :update, id: @rosette_button_comp, rosette_button_comp: { alt_sub_comp: @rosette_button_comp.alt_sub_comp, inventory_product_code: @rosette_button_comp.inventory_product_code, inventroy_sub_comp: @rosette_button_comp.inventroy_sub_comp }
    assert_redirected_to rosette_button_comp_path(assigns(:rosette_button_comp))
  end

  test "should destroy rosette_button_comp" do
    assert_difference('RosetteButtonComp.count', -1) do
      delete :destroy, id: @rosette_button_comp
    end

    assert_redirected_to rosette_button_comps_path
  end
end

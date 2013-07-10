require 'test_helper'

class RosetteStreamerCompsControllerTest < ActionController::TestCase
  setup do
    @rosette_streamer_comp = rosette_streamer_comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosette_streamer_comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rosette_streamer_comp" do
    assert_difference('RosetteStreamerComp.count') do
      post :create, rosette_streamer_comp: { alt_sub_comp: @rosette_streamer_comp.alt_sub_comp, inventory_product_code: @rosette_streamer_comp.inventory_product_code, inventory_sub_comp: @rosette_streamer_comp.inventory_sub_comp }
    end

    assert_redirected_to rosette_streamer_comp_path(assigns(:rosette_streamer_comp))
  end

  test "should show rosette_streamer_comp" do
    get :show, id: @rosette_streamer_comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rosette_streamer_comp
    assert_response :success
  end

  test "should update rosette_streamer_comp" do
    put :update, id: @rosette_streamer_comp, rosette_streamer_comp: { alt_sub_comp: @rosette_streamer_comp.alt_sub_comp, inventory_product_code: @rosette_streamer_comp.inventory_product_code, inventory_sub_comp: @rosette_streamer_comp.inventory_sub_comp }
    assert_redirected_to rosette_streamer_comp_path(assigns(:rosette_streamer_comp))
  end

  test "should destroy rosette_streamer_comp" do
    assert_difference('RosetteStreamerComp.count', -1) do
      delete :destroy, id: @rosette_streamer_comp
    end

    assert_redirected_to rosette_streamer_comps_path
  end
end

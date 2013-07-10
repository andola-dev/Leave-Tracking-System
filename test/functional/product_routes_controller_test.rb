require 'test_helper'

class ProductRoutesControllerTest < ActionController::TestCase
  setup do
    @product_route = product_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_route" do
    assert_difference('ProductRoute.count') do
      post :create, product_route: { action_01: @product_route.action_01, action_02: @product_route.action_02, action_03: @product_route.action_03, action_04: @product_route.action_04, action_05: @product_route.action_05, action_06: @product_route.action_06, action_07: @product_route.action_07, action_08: @product_route.action_08, action_09: @product_route.action_09, action_10: @product_route.action_10, route_id: @product_route.route_id }
    end

    assert_redirected_to product_route_path(assigns(:product_route))
  end

  test "should show product_route" do
    get :show, id: @product_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_route
    assert_response :success
  end

  test "should update product_route" do
    put :update, id: @product_route, product_route: { action_01: @product_route.action_01, action_02: @product_route.action_02, action_03: @product_route.action_03, action_04: @product_route.action_04, action_05: @product_route.action_05, action_06: @product_route.action_06, action_07: @product_route.action_07, action_08: @product_route.action_08, action_09: @product_route.action_09, action_10: @product_route.action_10, route_id: @product_route.route_id }
    assert_redirected_to product_route_path(assigns(:product_route))
  end

  test "should destroy product_route" do
    assert_difference('ProductRoute.count', -1) do
      delete :destroy, id: @product_route
    end

    assert_redirected_to product_routes_path
  end
end

require 'test_helper'

class SubItemRoutesControllerTest < ActionController::TestCase
  setup do
    @sub_item_route = sub_item_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_item_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_item_route" do
    assert_difference('SubItemRoute.count') do
      post :create, sub_item_route: { description: @sub_item_route.description, sub_item_id: @sub_item_route.sub_item_id }
    end

    assert_redirected_to sub_item_route_path(assigns(:sub_item_route))
  end

  test "should show sub_item_route" do
    get :show, id: @sub_item_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_item_route
    assert_response :success
  end

  test "should update sub_item_route" do
    put :update, id: @sub_item_route, sub_item_route: { description: @sub_item_route.description, sub_item_id: @sub_item_route.sub_item_id }
    assert_redirected_to sub_item_route_path(assigns(:sub_item_route))
  end

  test "should destroy sub_item_route" do
    assert_difference('SubItemRoute.count', -1) do
      delete :destroy, id: @sub_item_route
    end

    assert_redirected_to sub_item_routes_path
  end
end

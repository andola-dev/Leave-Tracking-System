require 'test_helper'

class WorkAreaTypesControllerTest < ActionController::TestCase
  setup do
    @work_area_type = work_area_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_area_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_area_type" do
    assert_difference('WorkAreaType.count') do
      post :create, work_area_type: { name: @work_area_type.name, sort_name: @work_area_type.sort_name }
    end

    assert_redirected_to work_area_type_path(assigns(:work_area_type))
  end

  test "should show work_area_type" do
    get :show, id: @work_area_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_area_type
    assert_response :success
  end

  test "should update work_area_type" do
    put :update, id: @work_area_type, work_area_type: { name: @work_area_type.name, sort_name: @work_area_type.sort_name }
    assert_redirected_to work_area_type_path(assigns(:work_area_type))
  end

  test "should destroy work_area_type" do
    assert_difference('WorkAreaType.count', -1) do
      delete :destroy, id: @work_area_type
    end

    assert_redirected_to work_area_types_path
  end
end

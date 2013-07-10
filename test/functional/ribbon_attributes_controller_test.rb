require 'test_helper'

class RibbonAttributesControllerTest < ActionController::TestCase
  setup do
    @ribbon_attribute = ribbon_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ribbon_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ribbon_attribute" do
    assert_difference('RibbonAttribute.count') do
      post :create, ribbon_attribute: { cut: @ribbon_attribute.cut, length: @ribbon_attribute.length, print_color: @ribbon_attribute.print_color, ribbon_color: @ribbon_attribute.ribbon_color, template: @ribbon_attribute.template, title: @ribbon_attribute.title, width: @ribbon_attribute.width }
    end

    assert_redirected_to ribbon_attribute_path(assigns(:ribbon_attribute))
  end

  test "should show ribbon_attribute" do
    get :show, id: @ribbon_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ribbon_attribute
    assert_response :success
  end

  test "should update ribbon_attribute" do
    put :update, id: @ribbon_attribute, ribbon_attribute: { cut: @ribbon_attribute.cut, length: @ribbon_attribute.length, print_color: @ribbon_attribute.print_color, ribbon_color: @ribbon_attribute.ribbon_color, template: @ribbon_attribute.template, title: @ribbon_attribute.title, width: @ribbon_attribute.width }
    assert_redirected_to ribbon_attribute_path(assigns(:ribbon_attribute))
  end

  test "should destroy ribbon_attribute" do
    assert_difference('RibbonAttribute.count', -1) do
      delete :destroy, id: @ribbon_attribute
    end

    assert_redirected_to ribbon_attributes_path
  end
end

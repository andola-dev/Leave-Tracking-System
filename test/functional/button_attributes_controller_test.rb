require 'test_helper'

class ButtonAttributesControllerTest < ActionController::TestCase
  setup do
    @button_attribute = button_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:button_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create button_attribute" do
    assert_difference('ButtonAttribute.count') do
      post :create, button_attribute: { button_color: @button_attribute.button_color, length: @button_attribute.length, print_color: @button_attribute.print_color, print_die: @button_attribute.print_die }
    end

    assert_redirected_to button_attribute_path(assigns(:button_attribute))
  end

  test "should show button_attribute" do
    get :show, id: @button_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @button_attribute
    assert_response :success
  end

  test "should update button_attribute" do
    put :update, id: @button_attribute, button_attribute: { button_color: @button_attribute.button_color, length: @button_attribute.length, print_color: @button_attribute.print_color, print_die: @button_attribute.print_die }
    assert_redirected_to button_attribute_path(assigns(:button_attribute))
  end

  test "should destroy button_attribute" do
    assert_difference('ButtonAttribute.count', -1) do
      delete :destroy, id: @button_attribute
    end

    assert_redirected_to button_attributes_path
  end
end

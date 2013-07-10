require 'test_helper'

class RosetteHeadAttributesControllerTest < ActionController::TestCase
  setup do
    @rosette_head_attribute = rosette_head_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosette_head_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rosette_head_attribute" do
    assert_difference('RosetteHeadAttribute.count') do
      post :create, rosette_head_attribute: { layer1_color: @rosette_head_attribute.layer1_color, layer1_option: @rosette_head_attribute.layer1_option, layer2_color: @rosette_head_attribute.layer2_color, layer2_option: @rosette_head_attribute.layer2_option, layer3_color: @rosette_head_attribute.layer3_color, layer3_option: @rosette_head_attribute.layer3_option }
    end

    assert_redirected_to rosette_head_attribute_path(assigns(:rosette_head_attribute))
  end

  test "should show rosette_head_attribute" do
    get :show, id: @rosette_head_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rosette_head_attribute
    assert_response :success
  end

  test "should update rosette_head_attribute" do
    put :update, id: @rosette_head_attribute, rosette_head_attribute: { layer1_color: @rosette_head_attribute.layer1_color, layer1_option: @rosette_head_attribute.layer1_option, layer2_color: @rosette_head_attribute.layer2_color, layer2_option: @rosette_head_attribute.layer2_option, layer3_color: @rosette_head_attribute.layer3_color, layer3_option: @rosette_head_attribute.layer3_option }
    assert_redirected_to rosette_head_attribute_path(assigns(:rosette_head_attribute))
  end

  test "should destroy rosette_head_attribute" do
    assert_difference('RosetteHeadAttribute.count', -1) do
      delete :destroy, id: @rosette_head_attribute
    end

    assert_redirected_to rosette_head_attributes_path
  end
end

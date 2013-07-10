require 'test_helper'

class StreamerAttributesControllerTest < ActionController::TestCase
  setup do
    @streamer_attribute = streamer_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streamer_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create streamer_attribute" do
    assert_difference('StreamerAttribute.count') do
      post :create, streamer_attribute: { cut: @streamer_attribute.cut, left_color: @streamer_attribute.left_color, length: @streamer_attribute.length, right_color: @streamer_attribute.right_color, width: @streamer_attribute.width }
    end

    assert_redirected_to streamer_attribute_path(assigns(:streamer_attribute))
  end

  test "should show streamer_attribute" do
    get :show, id: @streamer_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @streamer_attribute
    assert_response :success
  end

  test "should update streamer_attribute" do
    put :update, id: @streamer_attribute, streamer_attribute: { cut: @streamer_attribute.cut, left_color: @streamer_attribute.left_color, length: @streamer_attribute.length, right_color: @streamer_attribute.right_color, width: @streamer_attribute.width }
    assert_redirected_to streamer_attribute_path(assigns(:streamer_attribute))
  end

  test "should destroy streamer_attribute" do
    assert_difference('StreamerAttribute.count', -1) do
      delete :destroy, id: @streamer_attribute
    end

    assert_redirected_to streamer_attributes_path
  end
end

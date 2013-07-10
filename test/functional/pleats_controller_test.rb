require 'test_helper'

class PleatsControllerTest < ActionController::TestCase
  setup do
    @pleat = pleats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pleats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pleat" do
    assert_difference('Pleat.count') do
      post :create, pleat: { layer1_length: @pleat.layer1_length, layer1_width: @pleat.layer1_width, layer2_length: @pleat.layer2_length, layer2_width: @pleat.layer2_width, layer3_length: @pleat.layer3_length, layer3_width: @pleat.layer3_width }
    end

    assert_redirected_to pleat_path(assigns(:pleat))
  end

  test "should show pleat" do
    get :show, id: @pleat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pleat
    assert_response :success
  end

  test "should update pleat" do
    put :update, id: @pleat, pleat: { layer1_length: @pleat.layer1_length, layer1_width: @pleat.layer1_width, layer2_length: @pleat.layer2_length, layer2_width: @pleat.layer2_width, layer3_length: @pleat.layer3_length, layer3_width: @pleat.layer3_width }
    assert_redirected_to pleat_path(assigns(:pleat))
  end

  test "should destroy pleat" do
    assert_difference('Pleat.count', -1) do
      delete :destroy, id: @pleat
    end

    assert_redirected_to pleats_path
  end
end

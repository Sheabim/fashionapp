require 'test_helper'

class GarmentTypesControllerTest < ActionController::TestCase
  setup do
    @garment_type = garment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garment_type" do
    assert_difference('GarmentType.count') do
      post :create, garment_type: { icon: @garment_type.icon, name: @garment_type.name }
    end

    assert_redirected_to garment_type_path(assigns(:garment_type))
  end

  test "should show garment_type" do
    get :show, id: @garment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garment_type
    assert_response :success
  end

  test "should update garment_type" do
    patch :update, id: @garment_type, garment_type: { icon: @garment_type.icon, name: @garment_type.name }
    assert_redirected_to garment_type_path(assigns(:garment_type))
  end

  test "should destroy garment_type" do
    assert_difference('GarmentType.count', -1) do
      delete :destroy, id: @garment_type
    end

    assert_redirected_to garment_types_path
  end
end
# 

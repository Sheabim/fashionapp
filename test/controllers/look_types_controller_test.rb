require 'test_helper'

class LookTypesControllerTest < ActionController::TestCase
  setup do
    @look_type = look_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:look_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create look_type" do
    assert_difference('LookType.count') do
      post :create, look_type: { name: @look_type.name }
    end

    assert_redirected_to look_type_path(assigns(:look_type))
  end

  test "should show look_type" do
    get :show, id: @look_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @look_type
    assert_response :success
  end

  test "should update look_type" do
    patch :update, id: @look_type, look_type: { name: @look_type.name }
    assert_redirected_to look_type_path(assigns(:look_type))
  end

  test "should destroy look_type" do
    assert_difference('LookType.count', -1) do
      delete :destroy, id: @look_type
    end

    assert_redirected_to look_types_path
  end
end

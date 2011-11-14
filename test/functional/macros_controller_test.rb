require 'test_helper'

class MacrosControllerTest < ActionController::TestCase
  setup do
    @macro = macros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macro" do
    assert_difference('Macro.count') do
      post :create, macro: @macro.attributes
    end

    assert_redirected_to macro_path(assigns(:macro))
  end

  test "should show macro" do
    get :show, id: @macro.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @macro.to_param
    assert_response :success
  end

  test "should update macro" do
    put :update, id: @macro.to_param, macro: @macro.attributes
    assert_redirected_to macro_path(assigns(:macro))
  end

  test "should destroy macro" do
    assert_difference('Macro.count', -1) do
      delete :destroy, id: @macro.to_param
    end

    assert_redirected_to macros_path
  end
end

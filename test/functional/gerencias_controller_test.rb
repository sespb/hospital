require 'test_helper'

class GerenciasControllerTest < ActionController::TestCase
  setup do
    @gerencia = gerencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerencia" do
    assert_difference('Gerencia.count') do
      post :create, gerencia: @gerencia.attributes
    end

    assert_redirected_to gerencia_path(assigns(:gerencia))
  end

  test "should show gerencia" do
    get :show, id: @gerencia.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerencia.to_param
    assert_response :success
  end

  test "should update gerencia" do
    put :update, id: @gerencia.to_param, gerencia: @gerencia.attributes
    assert_redirected_to gerencia_path(assigns(:gerencia))
  end

  test "should destroy gerencia" do
    assert_difference('Gerencia.count', -1) do
      delete :destroy, id: @gerencia.to_param
    end

    assert_redirected_to gerencias_path
  end
end

require 'test_helper'

class LeitosControllerTest < ActionController::TestCase
  setup do
    @leito = leitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leito" do
    assert_difference('Leito.count') do
      post :create, leito: @leito.attributes
    end

    assert_redirected_to leito_path(assigns(:leito))
  end

  test "should show leito" do
    get :show, id: @leito.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leito.to_param
    assert_response :success
  end

  test "should update leito" do
    put :update, id: @leito.to_param, leito: @leito.attributes
    assert_redirected_to leito_path(assigns(:leito))
  end

  test "should destroy leito" do
    assert_difference('Leito.count', -1) do
      delete :destroy, id: @leito.to_param
    end

    assert_redirected_to leitos_path
  end
end

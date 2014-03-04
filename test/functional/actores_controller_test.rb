require 'test_helper'

class ActoresControllerTest < ActionController::TestCase
  setup do
    @actore = actores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actore" do
    assert_difference('Actore.count') do
      post :create, actore: { cApellido: @actore.cApellido, cComenta: @actore.cComenta, cFacebook: @actore.cFacebook, cFoto: @actore.cFoto, cNombre: @actore.cNombre, cPais: @actore.cPais, cTwetter: @actore.cTwetter, cWeb: @actore.cWeb, dNacim: @actore.dNacim, sSexo: @actore.sSexo }
    end

    assert_redirected_to actore_path(assigns(:actore))
  end

  test "should show actore" do
    get :show, id: @actore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actore
    assert_response :success
  end

  test "should update actore" do
    put :update, id: @actore, actore: { cApellido: @actore.cApellido, cComenta: @actore.cComenta, cFacebook: @actore.cFacebook, cFoto: @actore.cFoto, cNombre: @actore.cNombre, cPais: @actore.cPais, cTwetter: @actore.cTwetter, cWeb: @actore.cWeb, dNacim: @actore.dNacim, sSexo: @actore.sSexo }
    assert_redirected_to actore_path(assigns(:actore))
  end

  test "should destroy actore" do
    assert_difference('Actore.count', -1) do
      delete :destroy, id: @actore
    end

    assert_redirected_to actores_path
  end
end

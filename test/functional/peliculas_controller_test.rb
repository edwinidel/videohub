require 'test_helper'

class PeliculasControllerTest < ActionController::TestCase
  setup do
    @pelicula = peliculas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peliculas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pelicula" do
    assert_difference('Pelicula.count') do
      post :create, pelicula: { cactor01: @pelicula.cactor01, cactor02: @pelicula.cactor02, cactor03: @pelicula.cactor03, cactor04: @pelicula.cactor04, cactor05: @pelicula.cactor05, cactor06: @pelicula.cactor06, cactor07: @pelicula.cactor07, cactor08: @pelicula.cactor08, cactor09: @pelicula.cactor09, cactor10: @pelicula.cactor10, ccaratula: @pelicula.ccaratula, cclasif: @pelicula.cclasif, cdirector: @pelicula.cdirector, cgenero: @pelicula.cgenero, cnombre: @pelicula.cnombre, cproductora: @pelicula.cproductora, csinopcis: @pelicula.csinopcis, cubicacion: @pelicula.cubicacion, cyear: @pelicula.cyear }
    end

    assert_redirected_to pelicula_path(assigns(:pelicula))
  end

  test "should show pelicula" do
    get :show, id: @pelicula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pelicula
    assert_response :success
  end

  test "should update pelicula" do
    put :update, id: @pelicula, pelicula: { cactor01: @pelicula.cactor01, cactor02: @pelicula.cactor02, cactor03: @pelicula.cactor03, cactor04: @pelicula.cactor04, cactor05: @pelicula.cactor05, cactor06: @pelicula.cactor06, cactor07: @pelicula.cactor07, cactor08: @pelicula.cactor08, cactor09: @pelicula.cactor09, cactor10: @pelicula.cactor10, ccaratula: @pelicula.ccaratula, cclasif: @pelicula.cclasif, cdirector: @pelicula.cdirector, cgenero: @pelicula.cgenero, cnombre: @pelicula.cnombre, cproductora: @pelicula.cproductora, csinopcis: @pelicula.csinopcis, cubicacion: @pelicula.cubicacion, cyear: @pelicula.cyear }
    assert_redirected_to pelicula_path(assigns(:pelicula))
  end

  test "should destroy pelicula" do
    assert_difference('Pelicula.count', -1) do
      delete :destroy, id: @pelicula
    end

    assert_redirected_to peliculas_path
  end
end

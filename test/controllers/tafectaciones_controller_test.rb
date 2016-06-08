require 'test_helper'

class TafectacionesControllerTest < ActionController::TestCase
  setup do
    skip
    @tafectacion = Tafectacion(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:tafectacion)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create tafectacion" do
    skip
    assert_difference('Tafectacion.count') do
      post :create, tafectacion: { created_at: @tafectacion.created_at, fechacreacion: @tafectacion.fechacreacion, fechadeshabilitacion: @tafectacion.fechadeshabilitacion, nombre: @tafectacion.nombre, observaciones: @tafectacion.observaciones, updated_at: @tafectacion.updated_at }
    end

    assert_redirected_to tafectacion_path(assigns(:tafectacion))
  end

  test "should show tafectacion" do
    skip
    get :show, id: @tafectacion
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @tafectacion
    assert_response :success
  end

  test "should update tafectacion" do
    skip
    patch :update, id: @tafectacion, tafectacion: { created_at: @tafectacion.created_at, fechacreacion: @tafectacion.fechacreacion, fechadeshabilitacion: @tafectacion.fechadeshabilitacion, nombre: @tafectacion.nombre, observaciones: @tafectacion.observaciones, updated_at: @tafectacion.updated_at }
    assert_redirected_to tafectacion_path(assigns(:tafectacion))
  end

  test "should destroy tafectacion" do
    skip
    assert_difference('Tafectacion.count', -1) do
      delete :destroy, id: @tafectacion
    end

    assert_redirected_to tafectaciones_path
  end
end

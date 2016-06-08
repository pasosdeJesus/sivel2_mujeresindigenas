require 'test_helper'

class MotivosnodenunciaControllerTest < ActionController::TestCase
  setup do
    skip
    @motivonodenuncia = Motivonodenuncia(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:motivonodenuncia)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create motivonodenuncia" do
    skip
    assert_difference('Motivonodenuncia.count') do
      post :create, motivonodenuncia: { created_at: @motivonodenuncia.created_at, fechacreacion: @motivonodenuncia.fechacreacion, fechadeshabilitacion: @motivonodenuncia.fechadeshabilitacion, nombre: @motivonodenuncia.nombre, observaciones: @motivonodenuncia.observaciones, updated_at: @motivonodenuncia.updated_at }
    end

    assert_redirected_to motivonodenuncia_path(assigns(:motivonodenuncia))
  end

  test "should show motivonodenuncia" do
    skip
    get :show, id: @motivonodenuncia
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @motivonodenuncia
    assert_response :success
  end

  test "should update motivonodenuncia" do
    skip
    patch :update, id: @motivonodenuncia, motivonodenuncia: { created_at: @motivonodenuncia.created_at, fechacreacion: @motivonodenuncia.fechacreacion, fechadeshabilitacion: @motivonodenuncia.fechadeshabilitacion, nombre: @motivonodenuncia.nombre, observaciones: @motivonodenuncia.observaciones, updated_at: @motivonodenuncia.updated_at }
    assert_redirected_to motivonodenuncia_path(assigns(:motivonodenuncia))
  end

  test "should destroy motivonodenuncia" do
    skip
    assert_difference('Motivonodenuncia.count', -1) do
      delete :destroy, id: @motivonodenuncia
    end

    assert_redirected_to motivonodenunciaes_path
  end
end

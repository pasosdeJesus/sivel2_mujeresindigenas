require 'test_helper'

class EstadoscasoControllerTest < ActionController::TestCase
  setup do
    skip
    @estadocaso = Estadocaso(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:estadocaso)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create estadocaso" do
    skip
    assert_difference('Estadocaso.count') do
      post :create, estadocaso: { created_at: @estadocaso.created_at, fechacreacion: @estadocaso.fechacreacion, fechadeshabilitacion: @estadocaso.fechadeshabilitacion, nombre: @estadocaso.nombre, observaciones: @estadocaso.observaciones, updated_at: @estadocaso.updated_at }
    end

    assert_redirected_to estadocaso_path(assigns(:estadocaso))
  end

  test "should show estadocaso" do
    skip
    get :show, id: @estadocaso
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @estadocaso
    assert_response :success
  end

  test "should update estadocaso" do
    skip
    patch :update, id: @estadocaso, estadocaso: { created_at: @estadocaso.created_at, fechacreacion: @estadocaso.fechacreacion, fechadeshabilitacion: @estadocaso.fechadeshabilitacion, nombre: @estadocaso.nombre, observaciones: @estadocaso.observaciones, updated_at: @estadocaso.updated_at }
    assert_redirected_to estadocaso_path(assigns(:estadocaso))
  end

  test "should destroy estadocaso" do
    skip
    assert_difference('Estadocaso.count', -1) do
      delete :destroy, id: @estadocaso
    end

    assert_redirected_to estadocasoes_path
  end
end

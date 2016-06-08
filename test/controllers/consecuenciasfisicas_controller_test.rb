require 'test_helper'

class ConsecuenciasfisicasControllerTest < ActionController::TestCase
  setup do
    skip
    @consecuenciafisica = Consecuenciafisica(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:consecuenciafisica)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create consecuenciafisica" do
    skip
    assert_difference('Consecuenciafisica.count') do
      post :create, consecuenciafisica: { created_at: @consecuenciafisica.created_at, fechacreacion: @consecuenciafisica.fechacreacion, fechadeshabilitacion: @consecuenciafisica.fechadeshabilitacion, nombre: @consecuenciafisica.nombre, observaciones: @consecuenciafisica.observaciones, updated_at: @consecuenciafisica.updated_at }
    end

    assert_redirected_to consecuenciafisica_path(assigns(:consecuenciafisica))
  end

  test "should show consecuenciafisica" do
    skip
    get :show, id: @consecuenciafisica
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @consecuenciafisica
    assert_response :success
  end

  test "should update consecuenciafisica" do
    skip
    patch :update, id: @consecuenciafisica, consecuenciafisica: { created_at: @consecuenciafisica.created_at, fechacreacion: @consecuenciafisica.fechacreacion, fechadeshabilitacion: @consecuenciafisica.fechadeshabilitacion, nombre: @consecuenciafisica.nombre, observaciones: @consecuenciafisica.observaciones, updated_at: @consecuenciafisica.updated_at }
    assert_redirected_to consecuenciafisica_path(assigns(:consecuenciafisica))
  end

  test "should destroy consecuenciafisica" do
    skip
    assert_difference('Consecuenciafisica.count', -1) do
      delete :destroy, id: @consecuenciafisica
    end

    assert_redirected_to consecuenciafisicaes_path
  end
end

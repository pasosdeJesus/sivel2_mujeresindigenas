require 'test_helper'

class ConsecuenciasindividualesControllerTest < ActionController::TestCase
  setup do
    skip
    @consecuenciaindividual = Consecuenciaindividual(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:consecuenciaindividual)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create consecuenciaindividual" do
    skip
    assert_difference('Consecuenciaindividual.count') do
      post :create, consecuenciaindividual: { created_at: @consecuenciaindividual.created_at, fechacreacion: @consecuenciaindividual.fechacreacion, fechadeshabilitacion: @consecuenciaindividual.fechadeshabilitacion, nombre: @consecuenciaindividual.nombre, observaciones: @consecuenciaindividual.observaciones, updated_at: @consecuenciaindividual.updated_at }
    end

    assert_redirected_to consecuenciaindividual_path(assigns(:consecuenciaindividual))
  end

  test "should show consecuenciaindividual" do
    skip
    get :show, id: @consecuenciaindividual
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @consecuenciaindividual
    assert_response :success
  end

  test "should update consecuenciaindividual" do
    skip
    patch :update, id: @consecuenciaindividual, consecuenciaindividual: { created_at: @consecuenciaindividual.created_at, fechacreacion: @consecuenciaindividual.fechacreacion, fechadeshabilitacion: @consecuenciaindividual.fechadeshabilitacion, nombre: @consecuenciaindividual.nombre, observaciones: @consecuenciaindividual.observaciones, updated_at: @consecuenciaindividual.updated_at }
    assert_redirected_to consecuenciaindividual_path(assigns(:consecuenciaindividual))
  end

  test "should destroy consecuenciaindividual" do
    skip
    assert_difference('Consecuenciaindividual.count', -1) do
      delete :destroy, id: @consecuenciaindividual
    end

    assert_redirected_to consecuenciaindividuales_path
  end
end

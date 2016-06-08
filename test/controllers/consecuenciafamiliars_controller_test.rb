require 'test_helper'

class ConsecuenciasfamiliaresControllerTest < ActionController::TestCase
  setup do
    skip
    @consecuenciafamiliar = Consecuenciafamiliar(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:consecuenciafamiliar)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create consecuenciafamiliar" do
    skip
    assert_difference('Consecuenciafamiliar.count') do
      post :create, consecuenciafamiliar: { created_at: @consecuenciafamiliar.created_at, fechacreacion: @consecuenciafamiliar.fechacreacion, fechadeshabilitacion: @consecuenciafamiliar.fechadeshabilitacion, nombre: @consecuenciafamiliar.nombre, observaciones: @consecuenciafamiliar.observaciones, updated_at: @consecuenciafamiliar.updated_at }
    end

    assert_redirected_to consecuenciafamiliar_path(assigns(:consecuenciafamiliar))
  end

  test "should show consecuenciafamiliar" do
    skip
    get :show, id: @consecuenciafamiliar
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @consecuenciafamiliar
    assert_response :success
  end

  test "should update consecuenciafamiliar" do
    skip
    patch :update, id: @consecuenciafamiliar, consecuenciafamiliar: { created_at: @consecuenciafamiliar.created_at, fechacreacion: @consecuenciafamiliar.fechacreacion, fechadeshabilitacion: @consecuenciafamiliar.fechadeshabilitacion, nombre: @consecuenciafamiliar.nombre, observaciones: @consecuenciafamiliar.observaciones, updated_at: @consecuenciafamiliar.updated_at }
    assert_redirected_to consecuenciafamiliar_path(assigns(:consecuenciafamiliar))
  end

  test "should destroy consecuenciafamiliar" do
    skip
    assert_difference('Consecuenciafamiliar.count', -1) do
      delete :destroy, id: @consecuenciafamiliar
    end

    assert_redirected_to consecuenciafamiliares_path
  end
end

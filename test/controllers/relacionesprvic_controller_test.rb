require 'test_helper'

class RelacionesprvicControllerTest < ActionController::TestCase
  setup do
    skip
    @relacionprvic = Relacionprvic(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:relacionprvic)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create relacionprvic" do
    skip
    assert_difference('Relacionprvic.count') do
      post :create, relacionprvic: { created_at: @relacionprvic.created_at, fechacreacion: @relacionprvic.fechacreacion, fechadeshabilitacion: @relacionprvic.fechadeshabilitacion, nombre: @relacionprvic.nombre, observaciones: @relacionprvic.observaciones, updated_at: @relacionprvic.updated_at }
    end

    assert_redirected_to relacionprvic_path(assigns(:relacionprvic))
  end

  test "should show relacionprvic" do
    skip
    get :show, id: @relacionprvic
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @relacionprvic
    assert_response :success
  end

  test "should update relacionprvic" do
    skip
    patch :update, id: @relacionprvic, relacionprvic: { created_at: @relacionprvic.created_at, fechacreacion: @relacionprvic.fechacreacion, fechadeshabilitacion: @relacionprvic.fechadeshabilitacion, nombre: @relacionprvic.nombre, observaciones: @relacionprvic.observaciones, updated_at: @relacionprvic.updated_at }
    assert_redirected_to relacionprvic_path(assigns(:relacionprvic))
  end

  test "should destroy relacionprvic" do
    skip
    assert_difference('Relacionprvic.count', -1) do
      delete :destroy, id: @relacionprvic
    end

    assert_redirected_to relacionprvices_path
  end
end

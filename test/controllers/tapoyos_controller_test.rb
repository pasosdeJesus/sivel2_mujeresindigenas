require 'test_helper'

class TapoyosControllerTest < ActionController::TestCase
  setup do
    skip
    @tapoyo = Tapoyo(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:tapoyo)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create tapoyo" do
    skip
    assert_difference('Tapoyo.count') do
      post :create, tapoyo: { created_at: @tapoyo.created_at, fechacreacion: @tapoyo.fechacreacion, fechadeshabilitacion: @tapoyo.fechadeshabilitacion, nombre: @tapoyo.nombre, observaciones: @tapoyo.observaciones, updated_at: @tapoyo.updated_at }
    end

    assert_redirected_to tapoyo_path(assigns(:tapoyo))
  end

  test "should show tapoyo" do
    skip
    get :show, id: @tapoyo
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @tapoyo
    assert_response :success
  end

  test "should update tapoyo" do
    skip
    patch :update, id: @tapoyo, tapoyo: { created_at: @tapoyo.created_at, fechacreacion: @tapoyo.fechacreacion, fechadeshabilitacion: @tapoyo.fechadeshabilitacion, nombre: @tapoyo.nombre, observaciones: @tapoyo.observaciones, updated_at: @tapoyo.updated_at }
    assert_redirected_to tapoyo_path(assigns(:tapoyo))
  end

  test "should destroy tapoyo" do
    skip
    assert_difference('Tapoyo.count', -1) do
      delete :destroy, id: @tapoyo
    end

    assert_redirected_to tapoyoes_path
  end
end

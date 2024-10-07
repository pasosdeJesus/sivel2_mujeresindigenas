require 'test_helper'

# Esta prueba supone que en la tabla básica hay un registro con id 1
# Si no lo hay agregar skip a pruebas que lo suponen o crear registro
# con id 1 en las mismas o en setup

module Admin
  class PoblacionesespecialesControllerTest < ActionDispatch::IntegrationTest
    POBLACIONESPECIAL_NUEVA = {
      nombre: 'X',
      observaciones: 'y',
      fechacreacion: '2024-09-04',
      fechadeshabilitacion: nil,
      created_at: '2024-09-04',
      updated_at: '2024-09-04',
    }

    IDEX = 3

    include Rails.application.routes.url_helpers
    include Devise::Test::IntegrationHelpers

    setup do
      @current_usuario = ::Usuario.find(1)
      sign_in @current_usuario
    end

    # Cada prueba se ejecuta en una transacción de la base de datos
    # que después de la prueba se revierte. Por lo que no
    # debe preocuparse por restaurar/borrar lo que modifique/elimine/agregue
    # en cada prueba.

    test "debe presentar listado" do
      get admin_poblacionesespeciales_path
      assert_response :success
      assert_template :index
    end

    test "debe presentar resumen de existente" do
      get admin_poblacionespecial_url(Poblacionespecial.find(IDEX))
      assert_response :success
      assert_template :show
    end

    test "debe presentar formulario para nueva" do
      get new_admin_poblacionespecial_path
      assert_response :success
      assert_template :new
    end

    test "debe crear nueva" do
      assert_difference('Poblacionespecial.count') do
        post admin_poblacionesespeciales_path, params: { 
          poblacionespecial: POBLACIONESPECIAL_NUEVA
        }
      end

      assert_redirected_to admin_poblacionespecial_path(
        assigns(:poblacionespecial))
    end

    test "debe actualizar existente" do
      patch admin_poblacionespecial_path(Poblacionespecial.find(IDEX)),
        params: { poblacionespecial: { nombre: 'YY'}}

      assert_redirected_to admin_poblacionespecial_path(
        assigns(:poblacionespecial))
    end

    test "debe eliminar" do
      r = Poblacionespecial.create!(POBLACIONESPECIAL_NUEVA)
      assert_difference('Poblacionespecial.count', -1) do
        delete admin_poblacionespecial_url(Poblacionespecial.find(r.id))
      end

      assert_redirected_to admin_poblacionesespeciales_path
    end
  end
end

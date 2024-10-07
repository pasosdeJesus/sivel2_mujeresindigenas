require 'test_helper'

# Esta prueba supone que en la tabla básica hay un registro con id 1
# Si no lo hay agregar skip a pruebas que lo suponen o crear registro
# con id 1 en las mismas o en setup

module Admin
  class RutasactivablesControllerTest < ActionDispatch::IntegrationTest
    RUTAACTIVABLE_NUEVA = {
      nombre: 'X',
      observaciones: 'y',
      fechacreacion: '2024-09-29',
      fechadeshabilitacion: nil,
      created_at: '2024-09-29',
      updated_at: '2024-09-29',
    }

    IDEX = 1

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
      get admin_rutasactivables_path
      assert_response :success
      assert_template :index
    end

    test "debe presentar resumen de existente" do
      get admin_rutaactivable_url(Rutaactivable.find(IDEX))
      assert_response :success
      assert_template :show
    end

    test "debe presentar formulario para nueva" do
      get new_admin_rutaactivable_path
      assert_response :success
      assert_template :new
    end

    test "debe crear nueva" do
      assert_difference('Rutaactivable.count') do
        post admin_rutasactivables_path, params: { 
          rutaactivable: RUTAACTIVABLE_NUEVA
        }
      end

      assert_redirected_to admin_rutaactivable_path(
        assigns(:rutaactivable))
    end

    test "debe actualizar existente" do
      patch admin_rutaactivable_path(Rutaactivable.find(IDEX)),
        params: { rutaactivable: { nombre: 'YY'}}

      assert_redirected_to admin_rutaactivable_path(
        assigns(:rutaactivable))
    end

    test "debe eliminar" do
      r = Rutaactivable.create!(RUTAACTIVABLE_NUEVA)
      assert_difference('Rutaactivable.count', -1) do
        delete admin_rutaactivable_url(Rutaactivable.find(r.id))
      end

      assert_redirected_to admin_rutasactivables_path
    end
  end
end

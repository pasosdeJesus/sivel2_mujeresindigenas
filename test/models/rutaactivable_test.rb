require 'test_helper'

class RutaactivableTest < ActiveSupport::TestCase

  PRUEBA_RUTAACTIVABLE = {
    nombre: "Rutaactivable",
    fechacreacion: "2024-09-29",
    created_at: "2024-09-29"
  }

  test "valido" do
    rutaactivable = ::Rutaactivable.create(
      PRUEBA_RUTAACTIVABLE)
    assert(rutaactivable.valid?)
    rutaactivable.destroy
  end

  test "no valido" do
    rutaactivable = ::Rutaactivable.new(
      PRUEBA_RUTAACTIVABLE)
    rutaactivable.nombre = ''
    assert_not(rutaactivable.valid?)
    rutaactivable.destroy
  end

  test "existente" do
    skip
    rutaactivable = ::Rutaactivable.where(id: 0).take
    assert_equal(rutaactivable.nombre, "SIN INFORMACIÓN")
  end

end

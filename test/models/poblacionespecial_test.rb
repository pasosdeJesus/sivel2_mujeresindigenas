require 'test_helper'

class PoblacionespecialTest < ActiveSupport::TestCase

  PRUEBA_POBLACIONESPECIAL = {
    nombre: "Poblacionespecial",
    fechacreacion: "2024-09-04",
    created_at: "2024-09-04"
  }

  test "valido" do
    poblacionespecial = ::Poblacionespecial.create(
      PRUEBA_POBLACIONESPECIAL)
    assert(poblacionespecial.valid?)
    poblacionespecial.destroy
  end

  test "no valido" do
    poblacionespecial = ::Poblacionespecial.new(
      PRUEBA_POBLACIONESPECIAL)
    poblacionespecial.nombre = ''
    assert_not(poblacionespecial.valid?)
    poblacionespecial.destroy
  end

  test "existente" do
    poblacionespecial = ::Poblacionespecial.where(id: 1).take
    assert_equal(poblacionespecial.nombre, "SIN INFORMACIÓN")
  end

end

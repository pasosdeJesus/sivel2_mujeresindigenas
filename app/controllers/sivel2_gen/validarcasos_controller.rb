require 'sivel2_gen/concerns/controllers/validarcasos_controller'

module Sivel2Gen
  class ValidarcasosController < ApplicationController

    load_and_authorize_resource class: Sivel2Gen::Caso
    include Sivel2Gen::Concerns::Controllers::ValidarcasosController

    def validar_interno
      @rango_fechas = 'Fecha de recepción'
      validar_sivel2_gen
    end # def validar_interno
         
  end
end

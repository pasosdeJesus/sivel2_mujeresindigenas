require 'sivel2_sjr/concerns/controllers/validarcasos_controller'

module Sivel2Gen
  class ValidarcasosController < ApplicationController

    load_and_authorize_resource class: Sivel2Gen::Caso
    include Sivel2Sjr::Concerns::Controllers::ValidarcasosController

    def validar_interno
      @rango_fechas = 'Fecha de recepción'
      validar_sivel2_gen
    end # def validar_interno
         
  end
end

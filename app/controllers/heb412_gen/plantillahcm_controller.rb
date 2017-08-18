# encoding: UTF-8

require 'heb412_gen/concerns/controllers/plantillahcm_controller'

module Heb412Gen
  class PlantillahcmController < Sip::ModelosController
 
    include Heb412Gen::Concerns::Controllers::PlantillahcmController    

    private

    def plantillahcm_params
      params.require(:plantillahcm).permit(
        :descripcion,
        :filainicial,
        :fuente,
        :licencia,
        :nombremenu, 
        :oficina_id,
        :ruta,
        :vista,
        :campoplantillahcm_attributes => [
          :id,
          :nombrecampo,
          :columna,
          :_destroy
        ]
      )
    end

  end
end

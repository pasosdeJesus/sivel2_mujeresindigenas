# encoding: UTF-8

module Admin
  class TafectacionesController < Sip::Admin::BasicasController
    before_action :set_tafectacion, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Tafectacion

    def clase 
      "::Tafectacion"
    end

    def set_tafectacion
      @basica = Tafectacion.find(params[:id])
    end

    def atributos_index
      [
        "id", "nombre", "observaciones", "fechacreacion", 
        "fechadeshabilitacion"
      ]
    end

    def genclase
      'F'
    end

    def tafectacion_params
      params.require(:tafectacion).permit(*atributos_form)
    end

  end
end

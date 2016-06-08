# encoding: UTF-8

module Admin
  class ConsecuenciasindividualesController < Sip::Admin::BasicasController
    before_action :set_consecuenciaindividual, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Consecuenciaindividual

    def clase 
      "::Consecuenciaindividual"
    end

    def set_consecuenciaindividual
      @basica = Consecuenciaindividual.find(params[:id])
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

    def consecuenciaindividual_params
      params.require(:consecuenciaindividual).permit(*atributos_form)
    end

  end
end

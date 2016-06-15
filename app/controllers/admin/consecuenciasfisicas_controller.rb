# encoding: UTF-8

module Admin
  class ConsecuenciasfisicasController < Sip::Admin::BasicasController
    before_action :set_consecuenciafisica, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Consecuenciafisica

    def clase 
      "::Consecuenciafisica"
    end

    def set_consecuenciafisica
      @basica = Consecuenciafisica.find(params[:id])
    end

    def atributos_index
      [
        "id", "nombre", "observaciones", "fechacreacion", 
        "fechadeshabilitacion"
      ]
    end

    def genclase
      'M'
    end

    def consecuenciafisica_params
      params.require(:consecuenciafisica).permit(*atributos_form)
    end

  end
end

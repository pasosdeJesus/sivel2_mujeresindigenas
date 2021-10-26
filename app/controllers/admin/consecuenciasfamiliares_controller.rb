module Admin
  class ConsecuenciasfamiliaresController < Sip::Admin::BasicasController
    before_action :set_consecuenciafamiliar, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Consecuenciafamiliar

    def clase 
      "::Consecuenciafamiliar"
    end

    def set_consecuenciafamiliar
      @basica = Consecuenciafamiliar.find(params[:id])
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

    def consecuenciafamiliar_params
      params.require(:consecuenciafamiliar).permit(*atributos_form)
    end

  end
end

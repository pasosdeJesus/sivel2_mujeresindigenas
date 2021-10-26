module Admin
  class EstadoscasoController < Sip::Admin::BasicasController
    before_action :set_estadocaso, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Estadocaso

    def clase 
      "::Estadocaso"
    end

    def set_estadocaso
      @basica = Estadocaso.find(params[:id])
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

    def estadocaso_params
      params.require(:estadocaso).permit(*atributos_form)
    end

  end
end

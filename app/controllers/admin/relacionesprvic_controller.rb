module Admin
  class RelacionesprvicController < Msip::Admin::BasicasController
    before_action :set_relacionprvic, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Relacionprvic

    def clase 
      "::Relacionprvic"
    end

    def set_relacionprvic
      @basica = Relacionprvic.find(params[:id])
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

    def relacionprvic_params
      params.require(:relacionprvic).permit(*atributos_form)
    end

  end
end

module Admin
  class ReligionesController < Sip::Admin::BasicasController
    before_action :set_religion, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Religion

    def clase 
      "::Religion"
    end

    def set_religion
      @basica = Religion.find(params[:id])
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

    def religion_params
      params.require(:religion).permit(*atributos_form)
    end

  end
end

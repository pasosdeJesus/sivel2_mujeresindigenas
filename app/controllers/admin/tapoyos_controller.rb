module Admin
  class TapoyosController < Sip::Admin::BasicasController
    before_action :set_tapoyo, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Tapoyo

    def clase 
      "::Tapoyo"
    end

    def set_tapoyo
      @basica = Tapoyo.find(params[:id])
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

    def tapoyo_params
      params.require(:tapoyo).permit(*atributos_form)
    end

  end
end

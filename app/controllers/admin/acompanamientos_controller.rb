module Admin
  class AcompanamientosController < Msip::Admin::BasicasController
    before_action :set_acompanamiento, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Acompanamiento

    def clase 
      "::Acompanamiento"
    end

    def set_acompanamiento
      @basica = Acompanamiento.find(params[:id])
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

    def acompanamiento_params
      params.require(:acompanamiento).permit(*atributos_form)
    end

  end
end

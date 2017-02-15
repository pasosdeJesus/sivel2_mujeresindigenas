# encoding: UTF-8

module Admin
  class TienetierrasController < Sip::Admin::BasicasController
    before_action :set_tienetierra, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Tienetierra

    def clase 
      "::Tienetierra"
    end

    def set_tienetierra
      @basica = Tienetierra.find(params[:id])
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

    def tienetierra_params
      params.require(:tienetierra).permit(*atributos_form)
    end

  end
end

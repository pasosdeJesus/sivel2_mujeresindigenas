# encoding: UTF-8

module Admin
  class EducacionpropiaController < Sip::Admin::BasicasController
    before_action :set_educacionpropia, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Educacionpropia

    def clase 
      "::Educacionpropia"
    end

    def set_educacionpropia
      @basica = Educacionpropia.find(params[:id])
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

    def educacionpropia_params
      params.require(:educacionpropia).permit(*atributos_form)
    end

  end
end

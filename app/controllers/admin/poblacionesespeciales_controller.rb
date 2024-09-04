module Admin
  class PoblacionesespecialesController < Msip::Admin::BasicasController
    before_action :set_poblacionespecial, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Poblacionespecial

    def clase 
      "::Poblacionespecial"
    end

    def set_poblacionespecial
      @basica = Poblacionespecial.find(params[:id])
    end

    def atributos_index
      [
        :id, 
        :nombre, 
        :observaciones, 
        :fechacreacion_localizada, 
        :habilitado
      ]
    end

    def genclase
      'F'
    end

    def poblacionespecial_params
      params.require(:poblacionespecial).permit(*atributos_form)
    end

  end
end

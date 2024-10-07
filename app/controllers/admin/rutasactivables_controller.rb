module Admin
  class RutasactivablesController < Msip::Admin::BasicasController
    before_action :set_rutaactivable, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Rutaactivable

    def clase 
      "::Rutaactivable"
    end

    def set_rutaactivable
      @basica = Rutaactivable.find(params[:id])
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
      'M'
    end

    def rutaactivable_params
      params.require(:rutaactivable).permit(*atributos_form)
    end

  end
end

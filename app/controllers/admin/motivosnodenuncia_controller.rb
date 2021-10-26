module Admin
  class MotivosnodenunciaController < Sip::Admin::BasicasController
    before_action :set_motivonodenuncia, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Motivonodenuncia

    def clase 
      "::Motivonodenuncia"
    end

    def set_motivonodenuncia
      @basica = Motivonodenuncia.find(params[:id])
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

    def motivonodenuncia_params
      params.require(:motivonodenuncia).permit(*atributos_form)
    end

  end
end

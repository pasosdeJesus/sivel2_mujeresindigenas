require 'jos19/concerns/controllers/personas_controller'

module Msip
  class PersonasController < Heb412Gen::ModelosController

    before_action :set_persona, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource class: Msip::Persona

    include Jos19::Concerns::Controllers::PersonasController

    def registrar_en_bitacora
      true
    end

    # Están listas @persona, @victima, @personaant, @caso
    # Y está listo para salvar la nueva persona @persona en
    # @victima --remplazando @personaant.
    # Continúa si esta función retorna true, de lo contrario
    # se espera que la función haga render json con el error
    # y que retorne false.
    def remplazar_antes_salvar_v
      ce = Sivel2Sjr::Casosjr.where(contacto: @persona.id)
      if ce.count > 0
        render json: "Víctima ya está en el caso #{ce.take.caso_id}.",
          status: :unprocessable_entity
        return false
      end
      ve = Sivel2Sjr::Victimasjr.joins('JOIN sivel2_gen_victima ' +
                                       ' ON sivel2_gen_victima.id = sivel2_sjr_victimasjr.victima_id').
                                       where('sivel2_gen_victima.persona_id' => @persona.id).
                                       where(fechadesagregacion: nil)
      if ve.count > 0
        render json: "Víctima ya está en el caso #{ve.take.victima.caso_id}",
          status: :unprocessable_entity
        return false
      end
      # Si se está remplazando el contacto, borra la persona
      # vacía que era contacto --y por lo mismo sólo permite
      # cuando es un contacto vacío.
      if @caso.casosjr.contacto && @personaant &&
          @caso.casosjr.contacto_id == @personaant.id
        if true
          render json: "No se ha implementado reemplazar datos de la persona",
            status: :unprocessable_entity
          return false
        else
          ppb=@caso.casosjr.contacto_id
          @caso.casosjr.contacto_id = nil
          @caso.casosjr.save!(validate: false)
          vic = @caso.victima.where(persona_id: ppb).take
          vic.persona_id=@persona.id
          vic.save(validate: false)
          @caso.casosjr.contacto_id = @persona.id
          @caso.casosjr.save!(validate: false)
          #redirect_to sivel2_gen.edit_caso_path(@caso)
          begin
            @personaant.destroy
            render partial: '/msip/personas/remplazar', layout: false
          rescue
          end
          return false # buscar obligar el redirect_to
        end
      end

      return true
    end

  end # class
end # module

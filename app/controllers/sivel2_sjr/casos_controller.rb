# encoding: UTF-8

require_dependency 'sivel2_sjr/concerns/controllers/casos_controller'

module Sivel2Sjr
  class CasosController < ApplicationController

    include Sivel2Sjr::Concerns::Controllers::CasosController

    # Campos por presentar en listado index
    def incluir_inicial
      if can? :edit, :casosacin
        ['casoid', 'fecharec', 'oficina', 'nusuario', 'ubicaciones', 'contacto']
      else
        ['casoid', 'fecharec', 'oficina', 'nusuario', 'ubicaciones']
      end
    end

    def campos_filtro1
      [:codigo,
       :fecharecini, :fecharecfin,
       :oficina_id, :usuario_id,
       :departamento_id, :municipio_id,
       :nombressp, :apellidossp, :sexo, :rangoedad_id,
       :categoria_id
      ]
    end

    def inicializa_index
      rplant = Heb412Gen::Plantillahcm.where(
        vista: 'Caso')
      if !can? :manage, Heb412Gen::Doc
        if current_usuario.oficina_id
          rplant = rplant.where('(oficina_id IS NULL OR oficina_id=?)',
                                current_usuario.oficina_id)
        else
          authorize! :manage, Heb412Gen::Doc
        end
      end
      @plantillas = rplant.select('nombremenu, id').map { 
          |c| [c.nombremenu, c.id] }
    end

    def valida_plantilla(current_usuario, idplant)
      if can? :manage, Heb412Gen::Doc
        return true
      elsif current_usuario.oficina_id
        p = Heb412Gen::Plantillahcm.find(idplant)
        if !p.oficina_id || 
          p.oficina_id == current_usuario.oficina_id
          return true
        end
      end
      return false
    end

    def update
      # No deben venir validaciones en controlador
      respond_to do |format|
        if (!params[:caso][:caso_etiqueta_attributes].nil?)
          params[:caso][:caso_etiqueta_attributes].each {|k,v|
            if (v[:id_usuario].nil? || v[:id_usuario] == "")
              v[:id_usuario] = current_usuario.id
            end
          }
        end
        if (!params[:caso][:respuesta_attributes].nil?)
          params[:caso][:respuesta_attributes].each {|k,v|
            if (v[:id_caso].nil?)
              v[:id_caso] = @caso.id
            end
          }
        end
        @caso.persona.first.apellidos = 'N'
        @caso.persona.first.nombres = 'N'
        @caso.persona.first.id_pais = 170
        @caso.current_usuario = current_usuario
        @caso.fecha = caso_params[:casosjr_attributes][:fecharec]
        if @caso.update(caso_params)
          Sivel2Gen::Conscaso.refresca_conscaso
          format.html { redirect_to @caso, notice: 'Caso actualizado.' }
          format.json { head :no_content }
          format.js   { redirect_to @caso, notice: 'Caso actualizado.' }
        else
          format.html { render action: 'edit', layout: 'application' }
          format.json { render json: @caso.errors, status: :unprocessable_entity }
          format.js   { render action: 'edit' }
        end
      end
    end

    def destroy
      if @caso.evento
        @caso.evento.each do |ev|
          if ev.eventopresponsable
            ev.eventopresponsable.each do |evp|
              ::CategoriaEventopresponsable.where(
                eventopresponsable_id: evp.id
              ).delete_all
            end
          end
          ev = ::Eventopresponsable.where(evento_id: ev.id).delete_all
        end
      end
      @caso.casosjr.destroy if @caso.casosjr
      sivel2_gen_destroy
    end

    def caso_params
      params.require(:caso).permit([
        :id, :fecha,
        :memo,
        :casosjr_attributes => [
          :asesor,
          :consecorg,
          :consentimiento,
          :docterrenopor,
          :fecharec,
          :id,
          :oficina_id,
          :_destroy,
          :acompanamiento_ids => [],
          :estadocaso_ids => []
        ],
        :caso_fuenteprensa_attributes => [
          :fecha,
          :fuenteprensa_id,
          :id,
          :ubicacion,
          :_destroy
        ],
        :victima_attributes => [
          :hijos,
          :id,
          :id_etnia,
          :id_iglesia,
          :id_persona,
          :id_profesion,
          :id_rangoedad,
          :_destroy,
          :persona_attributes => [
            :anionac,
            :apellidos,
            :dianac,
            :id,
            :id_pais,
            :id_departamento,
            :id_municipio,
            :id_clase,
            :mesnac,
            :nombres,
            :sexo,
            :tdocumento_id
          ],
          :victimasjr_attributes => [
            :areatierra,
            :asisteescuela,
            :cabezafamilia,
            :cabezahogar,
            :comoingresos,
            :comunidadres,
            :comunidadnac,
            :departamentores_id,
            :educacionpropia_id,
            :enfermedad,
            :incluidoruv,
            :id,
            :id_actividadoficio,
            :id_escolaridad,
            :id_estadocivil,
            :id_maternidad,
            :id_victima,
            :liderazgo,
            :municipiores_id,
            :ndiscapacidad,
            :organizacionfilial,
            :religion_id,
            :resguardores,
            :resguardonac,
            :residencia,
            :sistemasalud,
            :tipoliderazgo,
            :vicconflicto,
            :idioma_ids => [],
            :tienetierra_ids => [],
          ]
        ],
        :ubicacion_attributes => [
          :id,
          :id_clase,
          :id_departamento,
          :id_municipio,
          :id_pais,
          :id_tsitio,
          :latitud,
          :longitud,
          :lugar,
          :sitio,
          :_destroy
        ],
        :caso_presponsable_attributes => [
          :brigada,
          :batallon,
          :bloque,
          :division,
          :frente,
          :id,
          :id_presponsable,
          :otro,
          :tipo,
          :_destroy
        ],
        :evento_attributes => [
          :actividadesdejadas,
          :afectacionotra,
          :anio,
          :aniodenuncia,
          :avancescaso,
          :brindadaproteccion,
          :comunidad,
          :compromisosadquiridos,
          :denuncia,
          :denunciaante,
          :departamento_id,
          :descripcionafectacion,
          :dia,
          :diadenuncia,
          :diasemana,
          :etapaproceso,
          :fechadenuncia,
          :fechaseguimiento,
          :hora,
          :id,
          :medidasrecibidas,
          :mes,
          :mesdenuncia,
          :municipio_id,
          :numvecesantes,
          :observaciones,
          :quereparacion,
          :quisieradenunciar,
          :reaccionfamiliaycomunidad,
          :recibidoreparacion,
          :relacionadocon,
          :relacionprespvic,
          :resguardo,
          :sancionadovictimario,
          :seguimientojudicial,
          :seguimientopsicosocial,
          :situacionriesgo,
          :solicitomedidas,
          :telcontacto,
          :testigo,
          :valoracionjusticia,
          :_destroy,

          :acompanamiento_ids => [],
          :acompanamientorec_ids => [],
          :actoevento_attributes => [
            :categoria_id,
            :id,
            :presponsable_id,
            :_destroy,
          ],
          :consecuenciafamiliar_ids => [],
          :consecuenciafisica_ids => [],
          :consecuenciaindividual_ids => [],
          :eventopresponsable_attributes => [
            :presponsable_id,
            :id,
            :_destroy,
            :categoria_ids => [],
          ],
          :motivonodenuncia_ids => [],
          :relacionprvic_ids => [],
          :tafectacion_ids => [],
          :tapoyo_ids => []
        ],
        :anexo_caso_attributes => [
          :fecha,
          :id,
          :id_caso,
          :_destroy,
          :sip_anexo_attributes => [
            :adjunto,
            :descripcion,
            :id,
            :_destroy
          ]
        ],
        :caso_etiqueta_attributes => [
          :fecha,
          :id,
          :id_etiqueta,
          :id_usuario,
          :observaciones,
          :_destroy
        ]
      ] + otros_params
                                  )
    end

  end
end

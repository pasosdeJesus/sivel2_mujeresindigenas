# encoding: UTF-8

require_dependency 'sivel2_sjr/concerns/controllers/casos_controller'

module Sivel2Sjr
  class CasosController < ApplicationController

    include Sivel2Sjr::Concerns::Controllers::CasosController

    # Campos por presentar en listado index
    def incluir_inicial
      ['casoid', 'fecharec', 'oficina',
       'nusuario'
      ]
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



    def caso_params
      params.require(:caso).permit([
        :id, :fecha, 
        :memo, 
        :casosjr_attributes => [
          :id, :asesor, :oficina_id, :fecharec,
          :id_idioma,
          :estadocaso, :tipoacomp, :consentimiento,
          :_destroy
        ], 
        :caso_fuenteprensa_attributes => [
                :id, :fecha, :fuenteprensa_id, :ubicacion, 
                :_destroy
        ],
        :victima_attributes => [
          :id, :id_persona, :id_profesion, :id_rangoedad, :id_etnia, 
          :id_iglesia, :hijos, 
          :_destroy, 
          :persona_attributes => [
            :id, :nombres, :apellidos, :anionac, :mesnac, :dianac, 
            :id_pais, :id_departamento, :id_municipio, :id_clase, 
            :sexo, :tdocumento_id
          ],
          :victimasjr_attributes => [
            :id, :id_victima, :residencia, :tienetierra, :areatierra,
            :id_maternidad, :ndiscapacidad, :enfermedad, 
            :id_escolaridad,
            :cabezafamilia, :asisteescuela, :id_estadocivil, 
            :id_actividadoficio,
            :religion_id,
            :educacionpropia_id,
            :organizacionfilial, :comunidadnac, :resguardonac,
            :vicconflicto, :incluidoruv, :cabeahogar,
            :sistemasalud, :cabezahogar, :liderazgo
          ]
        ], 
        :ubicacion_attributes => [
          :id, :id_pais, :id_departamento, :id_municipio, :id_clase, 
          :lugar, :sitio, :latitud, :longitud, :id_tsitio, 
          :_destroy
        ],
        :desplazamiento_attributes => [
          :id, :fechaexpulsion, :id_expulsion, 
          :fechallegada, :id_llegada, :descripcion, 
          :id_clasifdesp, :id_tipodesp, :otrosdatos,
          :declaro, :hechosdeclarados, :fechadeclaracion,
          :id_declaroante, :id_inclusion,
          :id_acreditacion, :retornado,
          :reubicado, :connacionalretorno,
          :acompestado, :connacionaldeportado,
          :oficioantes, :id_modalidadtierra,
          :materialesperdidos, :inmaterialesperdidos,
          :protegiorupta, :documentostierra,
          :_destroy
        ],
        :caso_presponsable_attributes => [
          :id, :id_presponsable, :tipo, 
          :bloque, :frente, :brigada, :batallon, :division, :otro, 
          :_destroy
        ],
        :evento_attributes => [
          :id,
          :fecha, 
          :mesinexacto, 
          :diainexacto,
          :diasemana,
          :hora,
          :situacionriesgo,
          :solicitomedidas,
          :denuncia,
          :denunciaante,
          :testigo,
          :afectacionotra,
          :quisieradenunciar,
          :recibidoreparacion,
          :valoracionjusticia,
          :resguardo,
          :comunidad,
          :medidasrecibidas,
          :brindadaproteccion,
          :fechadenuncia,
          :descripcionafectacion,
          :relacionprespvic,
          :numvecesantes,
          :actividadesdejadas,
          :reaccionfamiliaycomunidad,
          :avancescaso,
          :etapaproceso,
          :compromisosadquiridos,
          :observaciones,
          :acompnecesita,
          :tafectacion_id,
          :tapoyo_id,
          :motivonodenuncia_id,
          :consecuenciafamiliar_id,
          :consecuenciaindividual_id,
          :_destroy,
          :actoevento_attributes => [
            :id, :presponsable_id, :categoria_id, :_destroy,
          ]
        ],
        :anexo_caso_attributes => [
          :id, 
          :id_caso,
          :fecha,
          :_destroy,
          :sip_anexo_attributes => [
            :id, :descripcion, :adjunto, :_destroy
          ]
        ],
        :caso_etiqueta_attributes => [
          :id, :id_usuario, :fecha, :id_etiqueta, :observaciones, :_destroy
        ]
      ] + otros_params
                                  )
    end

  end
end

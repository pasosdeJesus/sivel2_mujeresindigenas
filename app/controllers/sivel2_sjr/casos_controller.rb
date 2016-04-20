# encoding: UTF-8

require_dependency 'sivel2_sjr/concerns/controllers/casos_controller'

module Sivel2Sjr
  class CasosController < ApplicationController

    include Sivel2Sjr::Concerns::Controllers::CasosController

    # Campos por presentar en listado index
    def incluir_inicial
      ['casoid', 'fecharec', 'oficina',
       'nusuario', 'fecha', 'memo'
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
        caso_params[:victima_attributes].first[1][:persona_attributes][:nombres]  = 'N'
        caso_params[:victima_attributes].first[1][:persona_attributes][:apellidos]  = 'N'
        caso_params[:victima_attributes].first[1][:persona_attributes][:id_pais]  = 170
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
          :id, :fecharec, :asesor, :oficina_id, :direccion, 
          :telefono, :comosupo_id, :contacto, :detcomosupo,
          :dependen, :sustento, :leerescribir, 
          :ingresomensual, :gastos, :estrato, :id_statusmigratorio,
          :id_proteccion, :id_idioma,
          :consentimientosjr, :consentimientobd,
          :fechasalida, :id_salida, 
          :fechallegada, :id_llegada, 
          :categoriaref,
          :observacionesref,
          :memo1612,
          :_destroy
        ], 
        :caso_fotra_attributes => [
                :id, :fecha, :nombre, :anotacion, 
                :tfuente, :ubicacionfisica, :anexo_caso_id, 
                :_destroy
        ],
        :victima_attributes => [
          :id, :id_persona, :id_profesion, :id_rangoedad, :id_etnia, 
          :id_filiacion, :id_organizacion, :id_vinculoestado, :anotaciones,
          :id_iglesia, :orientacionsexual, 
          :_destroy, 
          :persona_attributes => [
            :id, :nombres, :apellidos, :anionac, :mesnac, :dianac, 
            :id_pais, :id_departamento, :id_municipio, :id_clase, 
            :nacionalde, :numerodocumento, :sexo, :tdocumento_id
          ],
          :victimasjr_attributes => [
            :id, :id_victima, :id_rolfamilia,
            :id_actividadoficio, :id_estadocivil, 
            :id_maternidad, :ndiscapacidad, :enfermedad, 
            :id_escolaridad,
            :sindocumento, :cabezafamilia, :asisteescuela, 
            :id_regimensalud, :eps, :tienesisben
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

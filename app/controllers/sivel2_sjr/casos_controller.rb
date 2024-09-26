require_dependency 'sivel2_gen/concerns/controllers/casos_controller'

module Sivel2Sjr
  class CasosController < Heb412Gen::ModelosController

    include Sivel2Gen::Concerns::Controllers::CasosController

    before_action :set_caso, only: [:show, :edit, :update, :destroy],
      exclude: [:poblacion_sexo_rangoedadac]
    load_and_authorize_resource class: Sivel2Gen::Caso

    # Campos por presentar en listado index
    def incluir_inicial
      if can? :edit, :casosacin
        ['casoid', 'fecharec', 'oficina', 'nusuario', 'ubicaciones', 'contacto', 'fechahecho']
      else
        ['casoid', 'fecharec', 'oficina', 'nusuario', 'ubicaciones', 'fechahecho']
      end
    end

    def campos_filtro1
      [:codigo,
       :fecharecini, :fecharecfin,
       :oficina_id, :usuario_id,
       :departamento_id, :municipio_id,
       :nombressp, :apellidossp, :sexo, :rangoedad_id,
       :relacionadocon,
       :categoria_ids,
       :fechahechoini, :fechahechofin,
      ]
    end


    # Ordenamiento inicial por este campo
    def campoord_inicial
      'fecharec'
    end


    def self.asegura_camposdinamicos(registro, current_usuario_id, otro)
    end

    def cortamemo
      200
    end

    def inicializa_index
      rplant = Heb412Gen::Plantillahcm.where(
        vista: 'Caso')
      if !can? :read, Heb412Gen::Doc
        if current_usuario.oficina_id
          rplant = rplant.where('(oficina_id IS NULL OR oficina_id=?)',
                                current_usuario.oficina_id)
        else
          authorize! :read, Heb412Gen::Doc
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

    # Filtro adicional para autenticar usado por index
    def filtro_particular(conscaso, params_filtro)
      conscaso
    end

    # GET /casos/1
    # GET /casos/1.json
    def show
      # En models/ability.rb agregar
      # can :read, Sivel2Gen::Caso,  etiqueta: { id: usuario.etiqueta.map(&:id) } 
      show_sivel2_gen
    end

    def new
      @registro = @caso = Sivel2Gen::Caso.new
      new_sivel2_sjr
      redirect_to edit_caso_path(@registro)
    end

    def new_sivel2_sjr
      @caso.current_usuario = current_usuario
      @caso.fecha = DateTime.now.strftime('%Y-%m-%d')
      @caso.memo = ''
      @caso.casosjr = Sivel2Sjr::Casosjr.new
      @caso.casosjr.fecharec = DateTime.now.strftime('%Y-%m-%d')
      @caso.casosjr.asesor = current_usuario.id
      @caso.casosjr.oficina_id= current_usuario.oficina_id.nil? ?  
        1 : current_usuario.oficina_id
      if params[:contacto] && 
          Msip::Persona.where(id: params[:contacto].to_i).count == 1
        per = Msip::Persona.find(params[:contacto])
      else
        per = Msip::Persona.new
        per.nombres = ''
        per.apellidos = ''
        per.sexo = 'S'
        per.save!(validate: false)
      end
      vic = Sivel2Gen::Victima.new
      vic.persona = per
      @caso.victima<<vic
      @caso.casosjr.contacto = per
      @caso.save!(validate: false)
      vic.caso_id = @caso.id
      vic.save!(validate: false)
      logger.debug "Victima salvada: #{vic.inspect}"
      #debugger
      vic.victimasjr = Sivel2Sjr::Victimasjr.new
      vic.victimasjr.victima_id = vic.id
      vic.victimasjr.save!(validate: false)
      cu = Sivel2Gen::CasoUsuario.new
      cu.usuario_id = current_usuario.id
      cu.caso_id = @caso.id
      cu.fechainicio = DateTime.now.strftime('%Y-%m-%d')
      cu.save!(validate: false)
    end

    def edit_sivel2_sjr
      @caso = @registro = Sivel2Gen::Caso.find(params[:id])
      authorize! :edit, @registro
      self.class.asegura_camposdinamicos(
        @registro, current_usuario.id, nil)
      @registro.save!(validate: false)
    end

    # GET /casos/1/edit
    def edit
      edit_sivel2_sjr
      if Cor1440Gen::Proyectofinanciero.where(id: 10).count == 1 then
        idseg = Cor1440Gen::Actividadpf.where(
          proyectofinanciero_id: 10,
          titulo: 'SEGUIMIENTO A CASO')
        if idseg.count == 1
          idseg = idseg.take.id
        else
          flash[:error] = 'No se identifico actividad de convenio SEGUIMIENTO A CASO'
          idseg = -1
        end   
        @actividadpf_seguimiento_id = idseg
      end
      if session[:capturacaso_acordeon]
        render 'editv', layout: 'application'
      else
        render 'edit', layout: 'application'
      end
    end

    def update
      # No deben venir validaciones en controlador
      respond_to do |format|
        if (params && params[:caso] && params[:caso][:caso_etiqueta_attributes])
          params[:caso][:caso_etiqueta_attributes].each {|k,v|
            if (v[:usuario_id].nil? || v[:usuario_id] == "")
              v[:usuario_id] = current_usuario.id
            end
          }
        end
        if (params && params[:caso] && !params[:caso][:respuesta_attributes].nil?)
          params[:caso][:respuesta_attributes].each {|k,v|
            if (v[:caso_id].nil?)
              v[:caso_id] = @caso.id
            end
          }
        end
        if (params && params[:caso] && params[:caso][:victima_attributes] && params[:caso][:victima_attributes]["0"][:persona_attributes][:apellidos] == '')
          params[:caso][:victima_attributes]["0"][:persona_attributes][:apellidos] = 'N'
        end
        if (params && params[:caso] && params[:caso][:victima_attributes] && params[:caso][:victima_attributes]["0"][:persona_attributes][:nombres] == '')
          params[:caso][:victima_attributes]["0"][:persona_attributes][:nombres] = 'N'
        end
        @caso.persona.first.apellidos = 'N'
        @caso.persona.first.nombres = 'N'
        @caso.persona.first.pais_id = 170
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


    # API, retorna población por sexo y rango de edad (sin modificar
    # base de datos)
    def poblacion_sexo_rangoedadac
      caso_id = params[:caso_id].to_i
      fecha = Msip::FormatoFechaHelper.fecha_local_estandar(
        params[:fecha])
      if !fecha
        render json: "No se pudo convertir fecha #{params[:fecha]}",
          status: :unprocessable_entity 
        return
      end
      fecha = Date.strptime(fecha, '%Y-%m-%d')

      anio = fecha.year
      mes = fecha.month
      dia = fecha.day
      casosjr = Sivel2Sjr::Casosjr.where(caso_id: caso_id)
      if casosjr.count == 0
        render json: "No se encontró caso #{caso_id}",
          status: :unprocessable_entity 
        return
      end
      rangoedad = {'S' => {}, 'M' => {}, 'F' => {}}
      totsexo = {}
      Sivel2Sjr::RangoedadHelper.poblacion_por_sexo_rango(
        casosjr.take.caso_id, fecha.year, fecha.month, fecha.day,
        'Cor1440Gen::Rangoedadac', rangoedad, totsexo)
      render json: rangoedad, status: :ok
    end


    def busca
      if !params[:term]
        respond_to do |format|
          format.html { render inline: 'Falta variable term' }
          format.json { render inline: 'Falta variable term' }
        end
      else
        term = Sivel2Gen::Caso.connection.quote_string(params[:term])
        consNom = term.downcase.strip #sin_tildes
        consNom.gsub!(/ +/, ":* & ")
        if consNom.length > 0
          consNom += ":*"
        end
        where = " to_tsvector('spanish', caso_id " +
          " || ' ' || unaccent(persona.nombres) " +
          " || ' ' || unaccent(persona.apellidos) " +
          " || ' ' || COALESCE(msip_tdocumento.sigla, '') " +
          " || ' ' || COALESCE(persona.numerodocumento::TEXT, '')) @@ " +
          "to_tsquery('spanish', '#{consNom}')";

        partes = [
          'caso_id::TEXT',
          'nombres',
          'apellidos',
          'COALESCE(msip_tdocumento.sigla, \'\')',
          'COALESCE(numerodocumento::TEXT, \'\')'
        ]
        s = "";
        l = " caso_id ";
        seps = "";
        sepl = " || ';' || ";
        partes.each do |p|
          s += seps + p;
          l += sepl + "char_length(#{p})";
          seps = " || ' ' || ";
        end
        qstring = "SELECT TRIM(#{s}) AS value, #{l} AS id 
                FROM public.msip_persona AS persona
                JOIN sivel2_sjr_casosjr AS casosjr ON 
                  persona.id=casosjr.contacto_id
                LEFT JOIN msip_tdocumento ON
                  persona.tdocumento_id=msip_tdocumento.id
                WHERE #{where} ORDER BY 1";

                #byebug
                r = ActiveRecord::Base.connection.select_all qstring
                respond_to do |format|
                  format.json { render :json, inline: r.to_json }
                  format.html { 
                    render :json, inline: 'No responde con parametro term' 
                  }
                end
      end

      return
      # autocomplete de jquery requiere label, val
      #              consc = ActiveRecord::Base.send(:sanitize_sql_array, ["
      #                SELECT label, value FROM (
      #                  SELECT label, value, to_tsvector('spanish', unaccent(label)) AS i
      #                  FROM (SELECT caso_id || ' ' || nombres || ' ' || 
      #                    apellidos || ' ' || numerodocumento as label, 
      #                    caso_id as value FROM sivel2_sjr_casosjr JOIN msip_persona ON 
      #                      msip_persona.id=sivel2_sjr_casosjr.contacto_id) AS s) as ss 
      #                WHERE i @@ to_tsquery('spanish', ?) ORDER BY 1;",
      #                consNom
      #              ])
      #              r = ActiveRecord::Base.connection.select_all consc
      #              respond_to do |format|
      #                format.json { render :json, inline: r.to_json }
      #              end
      #            end
    end

    def set_caso
      @caso = Sivel2Gen::Caso.find(params[:id].to_i)
      @caso.current_usuario = current_usuario
      @registro = @caso
      pcs = Sivel2Sjr::Casosjr.where(caso_id: params[:id].to_i)
      @casosjr = nil
      if pcs.count > 0
        @casosjr = pcs.take
      end
    end

    def otros_params
      []
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
          :otroacompanamiento,
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
          :etnia_id,
          :hijos,
          :id,
          :iglesia_id,
          :orientacionsexual,
          :persona_id,
          :profesion_id,
          :rangoedad_id,
          :_destroy,
          :persona_attributes => [
            :anionac,
            :apellidos,
            :centropoblado_id,
            :departamento_id,
            :dianac,
            :id,
            :mesnac,
            :municipio_id,
            :nombres,
            :numerodocumento,
            :pais_id,
            :sexo,
            :tdocumento_id
          ],
          :victimasjr_attributes => [
            :anioesquema,
            :areatierra,
            :asisteescuela,
            :cabezafamilia,
            :cabezahogar,
            :comoingresos,
            :comunidadres,
            :comunidadnac,
            :dependientes,
            :dependientesdiversidad,
            :dependientesmenores,
            :dependientesmayores,
            :contactodeconfianza,
            :departamentores_id,
            :educacionpropia_id,
            :enfermedad,
            :eps,
            :incluidoruv,
            :id,
            :actividadoficio_id,
            :escolaridad_id,
            :estadocivil_id,
            :maternidad_id,
            :victima_id,
            :liderazgo,
            :municipiores_id,
            :ndiscapacidad,
            :ocupacion,
            :organizacionfilial,
            :poblacionespecial_id,
            :religion_id,
            :resguardores,
            :resguardonac,
            :residencia,
            :sistemasalud,
            :telefono,
            :telefonocontactodeconfianza,
            :tieneesquema,
            :tipoliderazgo,
            :vicconflicto,
            :idioma_ids => [],
            :tienetierra_ids => [],
          ]
        ],
        :ubicacion_attributes => [
          :id,
          :centropoblado_id,
          :departamento_id,
          :municipio_id,
          :pais_id,
          :tsitio_id,
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
          :presponsable_id,
          :otro,
          :tipo,
          :_destroy
        ],
        :caso_solicitud_attributes => [
          :id, 
          :_destroy,
          :solicitud_attributes => [
            :id,
            :usuario_id, 
            :fecha,
            :fecha,
            :solicitud,
            :estadosol_id,
            :usuarionotificar_ids => []
          ]
        ],
        :evento_attributes => [
          :actividadesdejadas,
          :afectacionotra,
          :agresion,
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
          :quepaso,
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
          :caso_id,
          :_destroy,
          :msip_anexo_attributes => [
            :adjunto,
            :descripcion,
            :id,
            :_destroy
          ]
        ],
        :caso_etiqueta_attributes => [
          :fecha,
          :id,
          :etiqueta_id,
          :usuario_id,
          :observaciones,
          :_destroy
        ]
      ] + otros_params
                                  )
    end

  end
end

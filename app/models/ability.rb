class Ability < Sivel2Gen::Ability

  ROLADMIN  = 1
  ROLCOOR   = 4
  ROLANALI  = 5

  ROLES = [
    ["Administrador", ROLADMIN], 
    [nil, nil], 
    [nil, nil], 
    ["Administrador oficina", ROLCOOR], 
    ["Analista", ROLANALI], 
  ]

  BASICAS_PROPIAS = [
    ['', 'rutaactivable'],
    ['', 'acompanamiento'],
    ['', 'consecuenciafamiliar'],
    ['', 'consecuenciafisica'],
    ['', 'consecuenciaindividual'],
	  ['', 'educacionpropia'],
    ['', 'estadocaso'],
    ['', 'motivonodenuncia'],
    ['', 'poblacionespecial'],
    ['', 'relacionprvic'],
	  ['', 'religion'],
	  ['', 'tafectacion'],
	  ['', 'tapoyo'],
    ['', 'tienetierra']
  ] + [
    ['Sivel2Sjr', 'idioma'],
#    ['Sivel2Sjr', 'regimensalud'],
    ['Sivel2Sjr', 'rolfamilia']
  ] 

  def tablasbasicas 
    Msip::Ability::BASICAS_PROPIAS +
      Sivel2Gen::Ability::BASICAS_PROPIAS +
      BASICAS_PROPIAS  - [
        ['Msip', 'grupo'],
        ['Sivel2Gen', 'filiacion'],
        ['Sivel2Gen', 'iglesia'],
        ['Sivel2Gen', 'intervalo'],
        ['Sivel2Gen', 'frontera'],
        ['Sivel2Gen', 'intervalo'],
        ['Sivel2Gen', 'organizacion'],
        ['Sivel2Gen', 'pconsolidado'],
        ['Sivel2Gen', 'region'],
        ['Sivel2Gen', 'sectorsocial'],
        ['Sivel2Gen', 'vinculoestado']
      ]
  end

  CAMPOS_PLANTILLAS_PROPIAS = {
    'Caso' => {
      campos: [
        :caso_id,
        :organizacion,
        :consecutivo_organizacion,
        :consentimiento_priv_acin,
        :fecha_creacion,
        :fecha_actualizacion,
        :sistematizado_por,
        :fecha_doc_terreno,
        :doc_terreno_por,
        :estados_caso,
        :acompanamientos_caso,
        :otro_acompanamiento,
        :fuente1_nombre,
        :fuente1_fecha,
        :fuente1_detalle,
        :victima_priv_acin,
        :victima_nombres_priv_acin,
        :victima_apellidos_priv_acin,
        :victima_identificacion_priv_acin,
        :victima_docid,
        :victima_telefono,
        :victima_contacto_de_confianza,
        :victima_telefono_contacto,
        :victima_anionac,
        :victima_mesnac,
        :victima_dianac,
        :victima_edaddocumentacion,
        :victima_rangoedaddocumentacion,
        :victima_departamentonac,
        :victima_municipionac,
        :victima_resguardonac,
        :victima_comunidadnac,
        :victima_departamentores_priv_acin,
        :victima_municipiores_priv_acin,
        :victima_resguardores_priv_acin,
        :victima_comunidadres_priv_acin,
        :victima_numhijos_priv_acin,
        :victima_idiomas_priv_acin,
        :victima_etnia,
        :victima_estadocivil,
        :victima_ultgreducacionord,
        :victima_educacionpropia,
        :victima_carnetsalud,
        :victima_religion_priv_acin,
        :victima_comogeneraingresos_priv_acin,
        :victima_tienetierra_priv_acin,
        :victima_areatierra_priv_acin,
        :victima_eps,
        :victima_sexo,
        :victima_orientacion_sexual,
        :victima_ocupacion,
        :victima_incluidoruv,
        :victima_cabezahogar,
        :victima_liderazgocomunidad,
        :victima_tipoliderazgo_priv_acin,
        :victima_tieneesquema_priv_acin,
        :victima_anioesquema_priv_acin,
        :evento_fechaseguimiento,
        :evento_anio,
        :evento_mes,
        :evento_dia,
        :evento_diasemana,
        :evento_hora,
        :evento_departamento,
        :evento_municipio,
        :evento_resguardo,
        :evento_comunidadvereda,
        :evento_numvecesantes,
        :evento_relacionadoconconflicto,
        :evento_descripcion_priv_acin,
        :evento_que_paso,
        :evento_agresion,
        :evento_relacionesprvic_priv_acin,
        :evento_presponsables,
        :evento_hechosvictimizantes,
        :evento_presp_nombre,
        :evento_presp_sexo,
        :evento_presp_externo,
        :evento_presp_numid,
        :evento_presp_etnia,
        :evento_presp_ocupacion,
        :evento_presp_residencia,
        :evento_presp_comunidad,
        :evento_testigo,
        :evento_tiposafectaciones,
        :evento_afectacionesindividual_priv_acin,
        :evento_afectacionesfamiliar_priv_acin,
        :evento_tiposapoyos,
        :evento_afectacionesfisicas_priv_acin,
        :evento_actividadesdejarondehacer_priv_acin,
        :evento_reaccionfamiliaycomunidad_oriv_acin,
        :evento_afectacionaotrapersona_priv_acin,
        :evento_acompanamientosquenecesita,
        :evento_telcontacto_priv_acin,
        :evento_situacionderiesgo,
        :evento_antequienmedidas,
        :evento_medidasrecibidas,
        :evento_ruta_activada,
        :evento_otra_ruta,
        :evento_contexto_agresion,
        :evento_datos_adicionales,
        :evento_denuncia,
        :evento_denunciaante,
        :evento_aniodenuncia,
        :evento_mesdenuncia,
        :evento_diadenuncia,
        :evento_avancesdelcaso_priv_acin,
        :evento_etapadelproceso_priv_acin,
        :evento_harecibidoreparacion_priv_acin,
        :evento_cualreparacion_priv_acin,
        :evento_sancionadovictimario_priv_acin,
        :evento_motivosnodenuncia,
        :evento_valoracionjusticia,
        :evento_quisieradenunciar,
        :evento_compromisosadquiridos_priv_acin,
        :evento_observaciones_priv_acin,
        :evento_seguimientojudicial_priv_oik,
        :evento_seguimientopsicosocial_priv_oik,
        :ubicaciones
      ],
      controlador: 'Sivel2Gen::CasosController',
      ruta: '/casos'
    }
  }

  def campos_plantillas 
    Heb412Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone.merge(
      Cor1440Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone.merge(
        Sivel2Gen::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone.merge(
          ::Ability::CAMPOS_PLANTILLAS_PROPIAS.clone
        )
      )
    )
  end

  def initialize(usuario = nil)
    initialize_sivel2_gen(usuario)
    can :nuevo, ::Evento
    #can :contar, Msip::Ubicacion
    #debugger
    can :manage, Msip::GruposperController


    can :read, [Msip::Pais, Msip::Departamento, Msip::Municipio, Msip::Centropoblado]
    if !usuario || usuario.fechadeshabilitacion
      return
    end
    cannot :solocambiaretiquetas, Sivel2Gen::Caso
    can :contar, Sivel2Gen::Caso
    can :contar, Msip::Ubicacion
    can :buscar, Sivel2Gen::Caso
    can :lista, Sivel2Gen::Caso
    can :descarga_anexo, Msip::Anexo
    can :nuevo, Sivel2Sjr::Respuesta
    can :nuevo, Msip::Ubicacion
    can [:arbol, :nuevo], Sivel2Gen::Presponsable
    can :nuevo, Sivel2Gen::Victima
    if !usuario.nil? && !usuario.rol.nil? then
      if usuario.oficina && usuario.oficina.id  == 103
        can :edit, :casosoik
      end
      if usuario.oficina && usuario.oficina.id  == 104
        can :edit, :casosacin
      end
      if usuario.oficina && usuario.oficina.id  == 107
        can :edit, :casoscanamomo
      end
      case usuario.rol 
      when Ability::ROLANALI
        can :manage, ::Evento
        can :read, Cor1440Gen::Actividad
        can :new, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :read, Cor1440Gen::Informe
        can :read, Heb412Gen::Doc
        can :read, Heb412Gen::Plantillahcm
        can :manage, Msip::Persona
        can :manage, Sivel2Gen::Acto
        can :read, Sivel2Gen::Caso
        can :new, Sivel2Gen::Caso
        can :nuevo, Sivel2Gen::Caso
        can [:manage], Sivel2Gen::Caso, 
          casosjr: { oficina_id: usuario.oficina_id }
      when Ability::ROLCOOR
        can :manage, ::Evento
        can :new, ::Usuario
        can [:read, :manage], ::Usuario, oficina: { id: usuario.oficina_id}
        can :read, Cor1440Gen::Actividad
        can :new, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :manage, Cor1440Gen::Informe
        can :read, Heb412Gen::Doc
        can :read, Heb412Gen::Plantillahcm
        can :manage, Msip::Persona
        can :manage, Sivel2Gen::Acto
        can :read, Sivel2Gen::Caso
        can :new, Sivel2Gen::Caso
        can :nuevo, Sivel2Gen::Caso
        can [:manage], Sivel2Gen::Caso, 
          casosjr: { oficina_id: usuario.oficina_id }
        cannot :solocambiaretiquetas, Sivel2Gen::Caso
      when Ability::ROLADMIN, Ability::ROLDIR
        can :edit, :casosacin
        can :edit, :casoscanamomo
        can :edit, :casosoik
        can :manage, ::Evento
        can :manage, ::Usuario
        can :manage, Cor1440Gen::Actividad
        can :manage, Cor1440Gen::Informe
        can :manage, Heb412Gen::Doc
        can :manage, Heb412Gen::Plantillahcm
        can :manage, Msip::Persona
        can :manage, Msip::Respaldo7z
        can :manage, Msip::Bitacora7z
        can :manage, Sivel2Gen::Acto
        can :manage, Sivel2Gen::Caso
        can :manage, :tablasbasicas
        tablasbasicas.each do |t|
          c = Ability.tb_clase(t)
          can :manage, c
        end
        cannot :solocambiaretiquetas, Sivel2Gen::Caso
      end
    end

  end # initialize

end # class


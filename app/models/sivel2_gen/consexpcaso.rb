require 'sivel2_sjr/concerns/models/consexpcaso'

class Sivel2Gen::Consexpcaso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Consexpcaso
  
  def self.consulta_consexpcaso
        "SELECT " +
        # Pestaña Basicos
        "conscaso.caso_id,
        conscaso.oficina AS organizacion,
        casosjr.consecorg AS consecutivo_organizacion,
        CASE WHEN casosjr.consentimiento = 'I' THEN 'SIN INFORMACIÓN'
          WHEN casosjr.consentimiento = 'S' THEN 'SI'
          ELSE 'NO' END AS consentimiento_priv_acin,
        casosjr.created_at AS fecha_creacion,
        casosjr.updated_at AS fecha_actualizacion,
        conscaso.nusuario AS sistematizado_por,
        conscaso.fecharec AS fecha_doc_terreno,
        casosjr.docterrenopor AS doc_terreno_por,
        ARRAY_TO_STRING(ARRAY(SELECT nombre FROM public.estadocaso
         JOIN public.casosjr_estadocaso ON 
           casosjr_estadocaso.estadocaso_id=estadocaso.id
         WHERE casosjr_estadocaso.sivel2_sjr_casosjr_id=conscaso.caso_id), '; ')
         AS estados_caso,
        ARRAY_TO_STRING(ARRAY(SELECT nombre FROM public.acompanamiento
         JOIN public.acompanamiento_casosjr ON 
           acompanamiento_casosjr.acompanamiento_id=acompanamiento.id
         WHERE acompanamiento_casosjr.sivel2_sjr_casosjr_id=conscaso.caso_id), '; ')
         AS acompanamientos_caso,
         " +

         # Pestaña fuentes, primera solamente
         "ARRAY_TO_STRING(ARRAY(SELECT nombre FROM public.msip_fuenteprensa AS f
         JOIN public.sivel2_gen_caso_fuenteprensa AS cf ON 
           cf.fuenteprensa_id=f.id
         WHERE cf.id_caso=conscaso.caso_id 
         ORDER BY fecha LIMIT 1), '; ')
         AS fuente1_nombre,
         ARRAY_TO_STRING(ARRAY(SELECT fecha 
         FROM public.sivel2_gen_caso_fuenteprensa AS cf
         WHERE cf.id_caso=conscaso.caso_id
         ORDER BY fecha LIMIT 1), '; ')
         AS fuente1_fecha,
         ARRAY_TO_STRING(ARRAY(SELECT ubicacion
         FROM public.sivel2_gen_caso_fuenteprensa AS cf
         WHERE cf.id_caso=conscaso.caso_id
         ORDER BY fecha LIMIT 1), '; ')
         AS fuente1_detalle,
         " +

        # Pestaña victima
        "conscaso.contacto AS victima_priv_acin,
        contacto.nombres AS victima_nombres_priv_acin,
        contacto.apellidos AS victima_apellidos_priv_acin,
        COALESCE(tdocumento.sigla, '') AS victima_identificacion_priv_acin,
        contacto.anionac AS victima_anionac,
        contacto.mesnac AS victima_mesnac,
        contacto.dianac AS victima_dianac,
        CASE WHEN contacto.anionac IS NULL THEN NULL
          WHEN contacto.mesnac IS NULL OR contacto.dianac IS NULL THEN 
            CAST(EXTRACT(YEAR FROM conscaso.fecharec)-contacto.anionac AS INTEGER)
          WHEN contacto.mesnac < EXTRACT(MONTH FROM conscaso.fecharec) THEN
            CAST(EXTRACT(YEAR FROM conscaso.fecharec)-contacto.anionac AS INTEGER)
          WHEN contacto.mesnac > EXTRACT(MONTH FROM conscaso.fecharec) THEN
            CAST(EXTRACT(YEAR FROM conscaso.fecharec)-contacto.anionac-1 AS INTEGER)
          WHEN contacto.dianac > EXTRACT(DAY FROM conscaso.fecharec) THEN
            CAST(EXTRACT(YEAR FROM conscaso.fecharec)-contacto.anionac-1 AS INTEGER)
          ELSE 
            CAST(EXTRACT(YEAR FROM conscaso.fecharec)-contacto.anionac AS INTEGER)
        END AS victima_edaddocumentacion,
        COALESCE(rangoedad.nombre, '') AS victima_rangoedaddocumentacion,
        COALESCE(vdepartamento.nombre, '') AS victima_departamentonac,
        COALESCE(vmunicipio.nombre, '') AS victima_municipionac,
        scontacto.resguardonac AS victima_resguardonac,
        scontacto.comunidadnac AS victima_comunidadnac,
        COALESCE(sdepartamento.nombre, '') AS victima_departamentores_priv_acin,
        COALESCE(smunicipio.nombre, '') AS victima_municipiores_priv_acin,
        scontacto.resguardores AS victima_resguardores_priv_acin,
        scontacto.comunidadres AS victima_comunidadres_priv_acin,
        vcontacto.hijos AS victima_numhijos_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT nombre FROM public.sivel2_sjr_idioma AS idioma
         JOIN public.idioma_victimasjr ON 
           idioma_victimasjr.sivel2_sjr_idioma_id=idioma.id WHERE 
         idioma_victimasjr.sivel2_sjr_victimasjr_id=scontacto.id_victima), '; ')
         AS victima_idiomas_priv_acin,
        COALESCE(etnia.nombre, '') AS victima_etnia,
        COALESCE(estadocivil.nombre, '') AS victima_estadocivil,
        COALESCE(escolaridad.nombre, '') AS victima_ultgreducacionord,
        COALESCE(educacionpropia.nombre, '') AS victima_educacionpropia,
        CASE WHEN scontacto.sistemasalud = 'P' THEN 'PROPIO'
          WHEN scontacto.sistemasalud = 'O' THEN 'ORDINARIO'
          ELSE 'SIN INFORMACIÓN' END AS victima_carnetsalud,

        COALESCE(religion.nombre, '') AS victima_religion_priv_acin,
        scontacto.comoingresos AS victima_comogeneraingresos_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT nombre
         FROM public.tienetierra AS t
         JOIN public.tienetierra_victimasjr AS tv ON
          tv.tienetierra_id=t.id
         WHERE tv.sivel2_sjr_victimasjr_id=scontacto.id_victima
         ORDER BY nombre), '; ') AS victima_tienetierra_priv_acin,
        scontacto.areatierra AS victima_areatierra_priv_acin,
        CASE WHEN contacto.sexo = 'F' THEN 'MUJER'
          WHEN contacto.sexo = 'M' THEN 'HOMBRE'
          ELSE 'SIN INFORMACIÓN' END AS victima_sexo,
        CASE WHEN scontacto.incluidoruv = 'I' THEN 'SIN INFORMACIÓN'
          WHEN scontacto.incluidoruv = 'S' THEN 'SI'
          ELSE 'NO' END AS victima_incluidoruv,
        CASE WHEN scontacto.cabezahogar = 'I' THEN 'SIN INFORMACIÓN'
          WHEN scontacto.cabezahogar = 'S' THEN 'SI'
          ELSE 'NO' END AS victima_cabezahogar,
        CASE WHEN scontacto.liderazgo = 'Z' THEN 'EN ZONAS DE CONFLICTO'
          WHEN scontacto.liderazgo = 'S' THEN 'SI'
          WHEN scontacto.liderazgo = 'N' THEN 'NO'
          ELSE 'SIN INFORMACIÓN' END AS victima_liderazgocomunidad,
        scontacto.tipoliderazgo AS victima_tipoliderazgo_priv_acin,
        scontacto.tieneesquema AS victima_tieneesquema_priv_acin,
        scontacto.anioesquema AS victima_anioesquema_priv_acin,
       " +
       
        # Pestaña Evento (primer evento)
        "evento.fechaseguimiento AS evento_fechaseguimiento,
        evento.anio AS evento_anio,
        evento.mes AS evento_mes,
        evento.dia AS evento_dia,
        CASE WHEN evento.diasemana = '1' THEN 'LUNES'
          WHEN evento.diasemana = '2' THEN 'MARTES'
          WHEN evento.diasemana = '3' THEN 'MIÉRCOLES'
          WHEN evento.diasemana = '4' THEN 'JUEVES'
          WHEN evento.diasemana = '5' THEN 'VIERNES'
          WHEN evento.diasemana = '6' THEN 'SÁBADO'
          ELSE 'DOMINGO' END AS evento_diasemana,
        ARRAY_TO_STRING(ARRAY(SELECT nombre
         FROM public.msip_departamento AS d
         WHERE d.id=evento.departamento_id), '; ')
         AS evento_departamento,
        ARRAY_TO_STRING(ARRAY(SELECT nombre
         FROM public.msip_municipio AS m
         WHERE m.id=evento.municipio_id), '; ')
         AS evento_municipio,
        evento.resguardo AS evento_resguardo,
        evento.comunidad AS evento_comunidadvereda,
        evento.numvecesantes AS evento_numvecesantes,
        CASE WHEN evento.relacionadocon = 'A' THEN 'ARMADO'
          WHEN evento.relacionadocon = 'S' THEN 'SOCIAL'
          ELSE 'SIN INFORMACIÓN' END AS evento_relacionadoconconflicto,
        evento.descripcionafectacion AS evento_descripcion_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT r.nombre FROM
          public.evento_relacionprvic AS er JOIN public.relacionprvic AS r
          ON er.relacionprvic_id=r.id
          WHERE er.evento_id=evento.id), '; ') 
          AS evento_relacionesprvic_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT p.nombre FROM
          public.eventopresponsable AS ep JOIN public.sivel2_gen_presponsable AS p
          ON ep.presponsable_id=p.id
          WHERE ep.evento_id=evento.id ORDER BY ep.id), '; ') 
          AS evento_presponsables,
        ARRAY_TO_STRING(ARRAY(SELECT c.nombre FROM
          public.categoria_eventopresponsable AS ce JOIN public.eventopresponsable AS ep
          ON ce.eventopresponsable_id=ep.id
          JOIN public.sivel2_gen_categoria AS c 
          ON ce.categoria_id = c.id
          WHERE ep.evento_id=evento.id ORDER BY ep.id, c.id), '; ') 
          AS evento_hechosvictimizantes,
        CASE WHEN evento.testigo = 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.testigo = 'S' THEN 'SI'
          ELSE 'NO' END AS evento_testigo,
        ARRAY_TO_STRING(ARRAY(SELECT t.nombre FROM
          public.evento_tafectacion AS et JOIN public.tafectacion AS t
          ON et.tafectacion_id =t.id
          WHERE et.evento_id=evento.id), '; ') 
          AS evento_tiposafectaciones,
        ARRAY_TO_STRING(ARRAY(SELECT c.nombre FROM
          public.consecuenciaindividual_evento AS ce JOIN public.consecuenciaindividual AS c
          ON ce.consecuenciaindividual_id =c.id
          WHERE ce.evento_id=evento.id), '; ') 
          AS evento_afectacionesindividual_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT c.nombre FROM
          public.consecuenciafamiliar_evento AS ce JOIN public.consecuenciafamiliar AS c
          ON ce.consecuenciafamiliar_id =c.id
          WHERE ce.evento_id=evento.id), '; ') 
          AS evento_afectacionesfamiliar_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT t.nombre FROM
          public.evento_tapoyo AS et JOIN public.tapoyo AS t
          ON et.tapoyo_id =t.id
          WHERE et.evento_id=evento.id), '; ') 
          AS evento_tiposapoyos,
        ARRAY_TO_STRING(ARRAY(SELECT c.nombre FROM
          public.consecuenciafisica_evento AS ce JOIN public.consecuenciafisica AS c
          ON ce.consecuenciafisica_id =c.id
          WHERE ce.evento_id=evento.id), '; ') 
          AS evento_afectacionesfisicas_priv_acin,
        evento.actividadesdejadas AS evento_actividadesdejarondehacer_priv_acin,
        evento.reaccionfamiliaycomunidad AS evento_reaccionfamiliaycomunidad_oriv_acin,
        evento.afectacionotra AS evento_afectacionaotrapersona_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT a.nombre FROM
          public.acompanamiento_evento AS ae JOIN public.acompanamiento AS a
          ON ae.acompanamiento_id =a.id
          WHERE ae.evento_id=evento.id), '; ') 
          AS evento_acompanamientosquenecesita,
        evento.telcontacto AS evento_telcontacto_priv_acin,
        CASE WHEN evento.situacionriesgo= 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.situacionriesgo= 'S' THEN 'SI'
          ELSE 'NO' END AS evento_situacionderiesgo,
        CASE WHEN evento.solicitomedidas= 'C' THEN 'CABILDO'
          WHEN evento.solicitomedidas= 'E' THEN 'ESTADO'
          WHEN evento.solicitomedidas= 'Y' THEN 'ESTADO Y CABILDO'
          WHEN evento.solicitomedidas= 'N' THEN 'NINGUNO'
          ELSE 'SIN INFORMACIÓN' END AS evento_antequienmedidas,
        evento.medidasrecibidas AS evento_medidasrecibidas,
        CASE WHEN evento.denuncia= 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.denuncia= 'S' THEN 'SI'
          ELSE 'NO' END AS evento_denuncia,
        CASE WHEN evento.denunciaante= 'A' THEN 'AMBOS SISTEMAS'
          WHEN evento.denunciaante= 'O' THEN 'ORDINARIA'
          WHEN evento.denunciaante= 'P' THEN 'PROPIA'
          ELSE 'SIN INFORMACIÓN' END AS evento_denunciaante,
        evento.aniodenuncia AS evento_aniodenuncia,
        evento.mesdenuncia AS evento_mesdenuncia,
        evento.diadenuncia AS evento_diadenuncia,
        evento.avancescaso AS evento_avancesdelcaso_priv_acin,
        evento.etapaproceso AS evento_etapadelproceso_priv_acin,
        CASE WHEN evento.recibidoreparacion= 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.recibidoreparacion= 'S' THEN 'SI'
          ELSE 'NO' END AS evento_harecibidoreparacion_priv_acin,
        evento.quereparacion AS evento_cualreparacion_priv_acin,
        CASE WHEN evento.sancionadovictimario= 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.sancionadovictimario= 'S' THEN 'SI'
          ELSE 'NO' END AS evento_sancionadovictimario_priv_acin,
        ARRAY_TO_STRING(ARRAY(SELECT m.nombre FROM
          public.evento_motivonodenuncia AS em JOIN public.motivonodenuncia AS m
          ON em.motivonodenuncia_id =m.id
          WHERE em.evento_id=evento.id), '; ') 
          AS evento_motivosnodenuncia,
        CASE WHEN evento.valoracionjusticia= 'B' THEN 'BUENA'
          WHEN evento.valoracionjusticia= 'R' THEN 'REGULAR'
          WHEN evento.valoracionjusticia= 'M' THEN 'MALA'
          ELSE 'SIN INFORMACIÓN' END AS evento_valoracionjusticia,
        CASE WHEN evento.quisieradenunciar= 'I' THEN 'SIN INFORMACIÓN'
          WHEN evento.quisieradenunciar= 'S' THEN 'SI'
          ELSE 'NO' END AS evento_quisieradenunciar,
        evento.compromisosadquiridos AS evento_compromisosadquiridos_priv_acin,
        evento.observaciones AS evento_observaciones_priv_acin,
        evento.seguimientojudicial AS evento_seguimientojudicial_priv_oik,
        evento.seguimientopsicosocial AS evento_seguimientopsicosocial_priv_oik,

        conscaso.ubicaciones AS ubicaciones
        
        FROM public.sivel2_gen_conscaso AS conscaso
        JOIN public.sivel2_sjr_casosjr AS casosjr ON casosjr.id_caso=conscaso.caso_id
        JOIN public.sivel2_gen_caso AS caso ON casosjr.id_caso = caso.id 
        JOIN public.msip_persona as contacto ON contacto.id=casosjr.contacto_id
        JOIN public.sivel2_gen_victima AS vcontacto ON 
            vcontacto.id_persona = contacto.id AND vcontacto.id_caso = caso.id
        JOIN public.sivel2_sjr_victimasjr AS scontacto ON 
            vcontacto.id = scontacto.id_victima
        LEFT JOIN public.msip_tdocumento AS tdocumento ON
            contacto.tdocumento_id=tdocumento.id
        LEFT JOIN public.sivel2_gen_rangoedad AS rangoedad ON
          vcontacto.id_rangoedad = rangoedad.id
        LEFT JOIN public.msip_departamento AS vdepartamento ON
          contacto.id_departamento = vdepartamento.id
        LEFT JOIN public.msip_municipio AS vmunicipio ON
          contacto.id_municipio = vmunicipio.id
        LEFT JOIN public.msip_departamento AS sdepartamento ON
          scontacto.departamentores_id = sdepartamento.id
        LEFT JOIN public.msip_municipio AS smunicipio ON
          scontacto.municipiores_id = smunicipio.id
        LEFT JOIN public.sivel2_gen_etnia AS etnia ON
            vcontacto.id_etnia=etnia.id
        LEFT JOIN public.sivel2_gen_estadocivil AS estadocivil ON
            scontacto.id_estadocivil=estadocivil.id
        LEFT JOIN public.sivel2_gen_escolaridad AS escolaridad ON
            scontacto.id_escolaridad=escolaridad.id
        LEFT JOIN public.educacionpropia ON
            scontacto.educacionpropia_id = educacionpropia.id
        LEFT JOIN public.religion ON
            scontacto.religion_id = religion.id
        LEFT JOIN public.evento ON
            evento.caso_id = conscaso.caso_id
            AND evento.id = (SELECT MIN(e.id) FROM public.evento AS e 
            WHERE e.caso_id = conscaso.caso_id)
      "
  end

    def self.interpreta_ordenar_por(ordenar_por)
      ordexp = 'x'
      case ordenar_por
      when 'ubicaciones'
        ordexp = 'ubicaciones'
      when 'codigo'
        ordexp = 'caso_id'
      else
        ordexp = 'fecha_doc_terreno DESC'
      end
      return ordexp
    end

end


# encoding: UTF-8

require 'sivel2_sjr/concerns/models/consexpcaso'

class Sivel2Gen::Consexpcaso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Consexpcaso
  
  def self.consulta_consexpcaso
        "SELECT conscaso.caso_id,
        conscaso.oficina AS organizacion,
        casosjr.consecorg AS consecutivo_organizacion,
        CASE WHEN casosjr.consentimiento = 'I' THEN 'SIN INFORMACIÓN'
        WHEN casosjr.consentimiento = 'S' THEN 'SI'
        ELSE 'NO' END AS consentimiento,
        casosjr.created_at AS fecha_creacion,
        casosjr.updated_at AS fecha_actualizacion,
        conscaso.nusuario AS sistematizado_por,
        conscaso.fecharec AS fecha_doc_terreno,
        casosjr.docterrenopor AS doc_terreno_por,
        ARRAY_TO_STRING(ARRAY(SELECT nombre FROM estadocaso
         JOIN casosjr_estadocaso ON 
           casosjr_estadocaso.estadocaso_id=estadocaso.id
         WHERE casosjr_estadocaso.sivel2_sjr_casosjr_id=conscaso.caso_id), '; ')
         AS estados_caso,
        ARRAY_TO_STRING(ARRAY(SELECT nombre FROM acompanamiento
         JOIN acompanamiento_casosjr ON 
           acompanamiento_casosjr.acompanamiento_id=acompanamiento.id
         WHERE acompanamiento_casosjr.sivel2_sjr_casosjr_id=conscaso.caso_id), '; ')
         AS acompanamientos_caso,

        conscaso.contacto AS victima,
        contacto.nombres AS victima_nombres,
        contacto.apellidos AS victima_apellidos,
        COALESCE(tdocumento.sigla, '') AS victima_identificacion,
        contacto.sexo AS victima_sexo,
        COALESCE(etnia.nombre, '') AS victima_etnia,

        conscaso.ubicaciones AS ubicaciones
        
        FROM sivel2_gen_conscaso AS conscaso
        JOIN sivel2_sjr_casosjr AS casosjr ON casosjr.id_caso=conscaso.caso_id
        JOIN sivel2_gen_caso AS caso ON casosjr.id_caso = caso.id 
        JOIN sip_persona as contacto ON contacto.id=casosjr.contacto
        JOIN sivel2_gen_victima AS vcontacto ON 
            vcontacto.id_persona = contacto.id AND vcontacto.id_caso = caso.id
        LEFT JOIN sivel2_gen_etnia AS etnia ON
            vcontacto.id_etnia=etnia.id
        LEFT JOIN sip_tdocumento AS tdocumento ON
            contacto.tdocumento_id=tdocumento.id
      "
  end
  

end


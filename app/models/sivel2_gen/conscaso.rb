# encoding: UTF-8

require 'sivel2_sjr/concerns/models/conscaso'

class Sivel2Gen::Conscaso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Conscaso

  scope :filtro_categoria_id, lambda { |id|
    where('caso_id IN (
    SELECT evento.caso_id FROM categoria_eventopresponsable
    JOIN eventopresponsable ON
    categoria_eventopresponsable.eventopresponsable_id = eventopresponsable.id
    JOIN evento ON evento.id=eventopresponsable.evento_id
    WHERE categoria_id = ?)', id)
  }

  scope :filtro_departamento_id, lambda { |id|
    where('caso_id IN (SELECT caso_id
         FROM evento
         WHERE evento.departamento_id = ?)', id)
  }

  scope :filtro_municipio_id, lambda { |id|
    where('caso_id IN (SELECT caso_id
         FROM evento
         WHERE evento.municipio_id = ?)', id)
  }

  # Refresca vista materializa sivel2_gen_conscaso
  # Si cambia la definición de la vista borre sivel2_gen_conscaso1 y
  # sivel2_gen_conscaso para que esta función las genere modificadas
  def self.refresca_conscaso
    if !ActiveRecord::Base.connection.data_source_exists? 'sivel2_gen_conscaso'
      ActiveRecord::Base.connection.execute(
        "CREATE OR REPLACE VIEW sivel2_gen_conscaso1
        AS SELECT casosjr.id_caso as caso_id,
        ARRAY_TO_STRING(ARRAY(SELECT nombres || ' ' || apellidos
          FROM sip_persona AS persona
          WHERE persona.id=casosjr.contacto), ', ')
          AS contacto,
        ARRAY_TO_STRING(ARRAY(SELECT departamento.nombre ||  ' / '
        || municipio.nombre
        FROM evento
          LEFT JOIN sip_departamento AS departamento
            ON (evento.departamento_id = departamento.id)
          LEFT JOIN sip_municipio AS municipio
            ON (evento.municipio_id=municipio.id)
          WHERE evento.caso_id = caso.id), ', ')
        AS ubicaciones,
        casosjr.fecharec,
        oficina.nombre AS oficina,
        usuario.nusuario
        FROM sivel2_sjr_casosjr AS casosjr
        JOIN sivel2_gen_caso AS caso ON casosjr.id_caso = caso.id
        JOIN sip_oficina AS oficina ON  oficina.id = casosjr.oficina_id
        JOIN usuario ON usuario.id = casosjr.asesor"
      )
      ActiveRecord::Base.connection.execute(
        "CREATE MATERIALIZED VIEW sivel2_gen_conscaso
        AS SELECT caso_id, contacto, ubicaciones, fecharec, oficina,
          nusuario,
          to_tsvector('spanish', unaccent(caso_id || ' ' || contacto ||
            ' ' || replace(cast(fecharec AS varchar), '-', ' ') ||
            ' ' || oficina || ' ' || nusuario || ' ' )) as q
        FROM sivel2_gen_conscaso1"
      );
      ActiveRecord::Base.connection.execute(
        "CREATE INDEX busca_conscaso ON sivel2_gen_conscaso USING gin(q);"
      )
    else
      ActiveRecord::Base.connection.execute(
        "REFRESH MATERIALIZED VIEW sivel2_gen_conscaso"
      )
    end
  end # def refresca_conscaso

end


require 'sivel2_sjr/concerns/models/conscaso'

class Sivel2Gen::Conscaso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Conscaso

  scope :filtro_categoria_ids, lambda { |ids|
    where('caso_id IN (
    SELECT evento.caso_id FROM public.categoria_eventopresponsable
    JOIN eventopresponsable ON
    categoria_eventopresponsable.eventopresponsable_id = eventopresponsable.id
    JOIN evento ON evento.id=eventopresponsable.evento_id
    WHERE categoria_id IN (?))', ids.map(&:to_i).select {|c| c > 0})
  }


  scope :filtro_categoria_id, lambda { |id|
    where('caso_id IN (
    SELECT evento.caso_id FROM public.categoria_eventopresponsable
    JOIN eventopresponsable ON
    categoria_eventopresponsable.eventopresponsable_id = eventopresponsable.id
    JOIN evento ON evento.id=eventopresponsable.evento_id
    WHERE categoria_id = ?)', id.to_i)
  }

  scope :filtro_departamento_id, lambda { |id|
    where('caso_id IN (SELECT caso_id
         FROM public.evento
         WHERE evento.departamento_id = ?)', id.to_i)
  }


  scope :filtro_fechahechoini, lambda { |f|
    where("fechahecho='' OR substring(fechahecho from 1 for 4)='0000' OR 
          regexp_replace(
            regexp_replace(replace(fechahecho::text, '-00-00', '-12-31'),
              '-00-(..)', '-12-\\1'), '-(..)-00', '-\\1-31')
          >= ?::text", f.to_s)
  }

  scope :filtro_fechahechofin, lambda { |f|
    where("fechahecho='' OR substring(fechahecho from 1 for 4)='0000' OR 
          regexp_replace(
            regexp_replace(replace(fechahecho::text, '-00-00', '01-01'),
              '-00-(..)', '-01-\\1'), '-(..)-00', '-\\1-01')
          <= ?::text", f.to_s)
  }

  scope :filtro_municipio_id, lambda { |id|
    where('caso_id IN (SELECT caso_id
         FROM public.evento
         WHERE evento.municipio_id = ?)', id.to_i)
  }

  scope :filtro_relacionadocon, lambda { |r|
    where('caso_id IN (SELECT caso_id
         FROM public.evento
         WHERE evento.relacionadocon = ?)', r)
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
          FROM public.sip_persona AS persona
          WHERE persona.id=casosjr.contacto_id), ', ')
          AS contacto,
        ARRAY_TO_STRING(ARRAY(SELECT departamento.nombre ||  ' / '
        || municipio.nombre
        FROM public.evento
          LEFT JOIN sip_departamento AS departamento
            ON (evento.departamento_id = departamento.id)
          LEFT JOIN sip_municipio AS municipio
            ON (evento.municipio_id=municipio.id)
          WHERE evento.caso_id = caso.id), ', ')
        AS ubicaciones,
        casosjr.fecharec,
        oficina.nombre AS oficina,
        usuario.nusuario,
        ARRAY_TO_STRING(ARRAY(SELECT LPAD(COALESCE(anio, 0)::text, 4, '0') || '-' || 
        LPAD(COALESCE(mes,0)::text, 2, '0') || '-' || LPAD(COALESCE(dia, 0)::text, 2, '0')
        FROM public.evento WHERE evento.caso_id=caso.id ORDER BY id LIMIT 1), ',')
        AS fechahecho
        FROM public.sivel2_sjr_casosjr AS casosjr
        JOIN sivel2_gen_caso AS caso ON casosjr.id_caso = caso.id
        JOIN sip_oficina AS oficina ON  oficina.id = casosjr.oficina_id
        JOIN usuario ON usuario.id = casosjr.asesor"
      )
      ActiveRecord::Base.connection.execute(
        "CREATE MATERIALIZED VIEW sivel2_gen_conscaso
        AS SELECT caso_id, contacto, ubicaciones, fecharec, oficina,
          nusuario, fechahecho,
          to_tsvector('spanish', unaccent(caso_id || ' ' || contacto ||
            ' ' || replace(cast(fecharec AS varchar), '-', ' ') ||
            ' ' || oficina || ' ' || nusuario || ' ' )) as q
        FROM public.sivel2_gen_conscaso1"
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


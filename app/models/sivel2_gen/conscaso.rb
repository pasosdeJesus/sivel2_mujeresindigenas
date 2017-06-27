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
end


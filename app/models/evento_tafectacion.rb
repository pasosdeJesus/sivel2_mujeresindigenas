# encoding: UTF-8

class EventoTafectacion < ActiveRecord::Base
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true
	belongs_to :tafectacion, class_name: '::Tafectacion',
    foreign_key: 'tafectacion_id', validate: true
end

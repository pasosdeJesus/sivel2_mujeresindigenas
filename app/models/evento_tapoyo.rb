# encoding: UTF-8

class EventoTapoyo < ActiveRecord::Base
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true
	belongs_to :tapoyo, class_name: '::Tapoyo',
    foreign_key: 'tapoyo_id', validate: true
end

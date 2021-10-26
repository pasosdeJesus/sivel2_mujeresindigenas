class EventoRelacionprvic < ActiveRecord::Base
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true
	belongs_to :relacionprvic, class_name: '::Relacionprvic',
    foreign_key: 'relacionprvic_id', validate: true
end

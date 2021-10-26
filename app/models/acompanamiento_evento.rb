class AcompanamientoEvento < ActiveRecord::Base
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true
	belongs_to :acompanamiento, class_name: '::Acompanamiento',
    foreign_key: 'acompanamiento_id', validate: true
end

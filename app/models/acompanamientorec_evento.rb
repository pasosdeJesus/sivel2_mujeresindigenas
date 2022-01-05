class AcompanamientorecEvento < ActiveRecord::Base
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true, optional: false
	belongs_to :acompanamientorec, class_name: '::Acompanamiento',
    foreign_key: 'acompanamiento_id', validate: true, optional: false
end

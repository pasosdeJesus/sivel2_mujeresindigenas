class ConsecuenciafisicaEvento < ActiveRecord::Base
	belongs_to :consecuenciafisica, class_name: '::Consecuenciafisica',
    foreign_key: 'consecuenciafisica_id', validate: true, optional: false
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true, optional: false
end

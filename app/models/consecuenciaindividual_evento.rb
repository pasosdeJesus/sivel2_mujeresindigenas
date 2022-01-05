class ConsecuenciaindividualEvento < ActiveRecord::Base
	belongs_to :consecuenciaindividual, class_name: '::Consecuenciaindividual',
    foreign_key: 'consecuenciaindividual_id', validate: true, optional: false
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true, optional: false
end

class ConsecuenciafamiliarEvento < ActiveRecord::Base
	belongs_to :consecuenciafamiliar, class_name: '::Consecuenciafamiliar',
    foreign_key: 'consecuenciafamiliar_id', validate: true, optional: false
	belongs_to :evento, class_name: '::Evento',
    foreign_key: 'evento_id', validate: true, optional: false
end

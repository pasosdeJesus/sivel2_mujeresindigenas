class EventoTafectacion < ActiveRecord::Base
	belongs_to :evento, validate: true, optional: false
	belongs_to :tafectacion, validate: true, optional: false
end

class EventoTafectacion < ActiveRecord::Base
	belongs_to :evento, validate: true
	belongs_to :tafectacion, validate: true
end

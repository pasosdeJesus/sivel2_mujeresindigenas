class EventoTapoyo < ActiveRecord::Base
	belongs_to :evento, validate: true, optional: false
	belongs_to :tapoyo, validate: true, optional: false
end

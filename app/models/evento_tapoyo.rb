# encoding: UTF-8

class EventoTapoyo < ActiveRecord::Base
	belongs_to :evento, validate: true
	belongs_to :tapoyo, validate: true
end

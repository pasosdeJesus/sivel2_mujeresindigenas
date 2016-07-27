# encoding: UTF-8

class CasosjrEstadocaso < ActiveRecord::Base
	belongs_to :sivel2_sjr_casosjr, class_name: 'Sivel2Sjr::Casosjr',
    foreign_key: 'sivel2_sjr_casosjr_id', validate: true
	belongs_to :estadocaso, class_name: '::Estadocaso',
    foreign_key: 'estadocaso_id', validate: true
end

# encoding: UTF-8

class TienetierraVictimasjr < ActiveRecord::Base
	belongs_to :tienetierra, class_name: '::Tienetierra',
    foreign_key: 'tienetierra_id', validate: true
	belongs_to :sivel2_sjr_victimasjr, class_name: 'Sivel2Sjr::Victimasjr',
    foreign_key: 'sivel2_sjr_victimasjr_id', validate: true
end

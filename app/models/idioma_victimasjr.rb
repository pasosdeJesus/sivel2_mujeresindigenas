class IdiomaVictimasjr < ActiveRecord::Base
	belongs_to :idioma, class_name: 'Sivel2Sjr::Idioma',
    foreign_key: 'sivel2_sjr_idioma_id', validate: true
	belongs_to :victimasjr, class_name: 'Sivel2Sjr::Victimasjr',
    foreign_key: 'sivel2_sjr_victimasjr_id', validate: true
end

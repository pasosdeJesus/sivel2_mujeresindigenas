class AcompanamientoCasosjr < ActiveRecord::Base
	belongs_to :sivel2_sjr_casosjr, class_name: 'Sivel2Sjr::Casosjr',
    foreign_key: 'sivel2_sjr_casosjr_id', validate: true
	belongs_to :acompanamiento, class_name: '::Acompanamiento',
    foreign_key: 'acompanamiento_id', validate: true
end

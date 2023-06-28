require 'sivel2_sjr/concerns/models/caso'

class Sivel2Gen::Caso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Caso

  has_many :actosjr, class_name: 'Sivel2Sjr::Actosjr',
    :through => :acto, dependent: :destroy
  accepts_nested_attributes_for :actosjr, allow_destroy: true, 
    reject_if: :all_blank

  has_one :casosjr, class_name: 'Sivel2Sjr::Casosjr',
    foreign_key: "caso_id", inverse_of: :caso, validate: true, 
    dependent: :destroy
  accepts_nested_attributes_for :casosjr, allow_destroy: true, 
    update_only: true

  has_many :victimasjr, class_name: 'Sivel2Sjr::Victimasjr',
    :through => :victima, dependent: :destroy
  accepts_nested_attributes_for :victimasjr, allow_destroy: true, 
    reject_if: :all_blank

  has_many :evento, class_name: '::Evento',
    foreign_key: "caso_id", validate:true, dependent: :destroy
  accepts_nested_attributes_for :evento, allow_destroy: true, 
    reject_if: :all_blank

  def caso_no_vacio
  end
end

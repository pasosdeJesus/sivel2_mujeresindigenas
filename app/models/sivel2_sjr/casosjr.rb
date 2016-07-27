# encoding: UTF-8

require 'sivel2_sjr/concerns/models/casosjr'

class Sivel2Sjr::Casosjr < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Casosjr
  has_many :caso_estadocaso, class_name: "::CasosjrEstadocaso", 
    foreign_key: "sivel2_sjr_casosjr_id", validate: true
  has_many :estadocaso, through: :caso_estadocaso, class_name: "::Estadocaso"

  validates :consentimiento, length: { maximum: 1}
end

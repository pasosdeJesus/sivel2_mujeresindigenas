# encoding: UTF-8

require 'sivel2_sjr/concerns/models/casosjr'

class Sivel2Sjr::Casosjr < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Casosjr

  has_many :casosjr_estadocaso, class_name: "::CasosjrEstadocaso", 
    foreign_key: "sivel2_sjr_casosjr_id", validate: true
  has_many :estadocaso, through: :casosjr_estadocaso, class_name: "::Estadocaso"

  has_many :acompanamiento_casosjr, 
    class_name: "::AcompanamientoCasosjr", 
    foreign_key: "sivel2_sjr_casosjr_id", validate: true,
    dependent: :delete_all
  has_many :acompanamiento, through: :acompanamiento_casosjr, 
    class_name: "::Acompanamiento"

  validates :consentimiento, length: { maximum: 1}
end

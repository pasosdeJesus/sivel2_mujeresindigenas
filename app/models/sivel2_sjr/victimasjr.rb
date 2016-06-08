# encoding: UTF-8
require 'sivel2_sjr/concerns/models/victimasjr'

class Sivel2Sjr::Victimasjr < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Victimasjr

  belongs_to :religion, class_name: '::Religion',
    foreign_key: 'religion_id', validate: true

  validates :cabezahogar, length: { maximum: 1}
  validates :comotierra, length: { maximum: 5000 }
  validates :comunidadnac, length: { maximum: 500 }
  validates :incluidoruv, length: { maximum: 1}
  validates :liderazgo, length: { maximum: 1}
  #validates :areatierra, null o positivo
  validates :organizacionfilial, length: { maximum: 500 }
  validates :resguardonac, length: { maximum: 500 }
  validates :residencia, length: { maximum: 5000 }
  validates :sistemasalud, length: { maximum: 1 }
  validates :tienetierra, length: { maximum: 1}
  validates :vicconflicto, length: { maximum: 1}
end

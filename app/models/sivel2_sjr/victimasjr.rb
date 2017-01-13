# encoding: UTF-8
require 'sivel2_sjr/concerns/models/victimasjr'

class Sivel2Sjr::Victimasjr < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Victimasjr

  belongs_to :religion, class_name: '::Religion',
    foreign_key: 'religion_id', validate: true
  belongs_to :educacionpropia, class_name: '::Educacionpropia',
    foreign_key: 'educacionpropia_id', validate: true
  belongs_to :departamentores, class_name: 'Sip::Departamento',
    foreign_key: 'departamentores_id', validate: true
  belongs_to :municipiores, class_name: 'Sip::Municipio',
    foreign_key: 'municipiores_id', validate: true

  has_many :idioma_victimasjr, class_name: "::IdiomaVictimasjr", 
    foreign_key: "sivel2_sjr_victimasjr_id", validate: true
  has_many :idioma, through: :idioma_victimasjr, class_name: "Sivel2Sjr::Idioma"

  #validates :areatierra, null o positivo
  validates :cabezahogar, length: { maximum: 1}
  validates :comoingresos, length: { maximum: 5000 }
  validates :comotierra, length: { maximum: 5000 }
  validates :comunidadnac, length: { maximum: 500 }
  validates :incluidoruv, length: { maximum: 1}
  validates :liderazgo, length: { maximum: 1}
  validates :municipiores, length: { maximum: 500 }
  validates :organizacionfilial, length: { maximum: 500 }
  validates :resguardonac, length: { maximum: 500 }
  validates :resguardores, length: { maximum: 500 }
  validates :residencia, length: { maximum: 5000 }
  validates :sistemasalud, length: { maximum: 1 }
  validates :tienetierra, length: { maximum: 1}
  validates :tipoliderazgo, length: { maximum: 5000 }
  validates :veredares, length: { maximum: 500 }
  validates :vicconflicto, length: { maximum: 1}
end

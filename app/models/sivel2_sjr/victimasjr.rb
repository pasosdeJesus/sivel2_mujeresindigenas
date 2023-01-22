require 'sivel2_sjr/concerns/models/victimasjr'

class Sivel2Sjr::Victimasjr < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Victimasjr

  belongs_to :religion, class_name: '::Religion',
    foreign_key: 'religion_id', validate: true, optional: true
  belongs_to :educacionpropia, class_name: '::Educacionpropia',
    foreign_key: 'educacionpropia_id', validate: true, optional: true
  belongs_to :departamentores, class_name: 'Msip::Departamento',
    foreign_key: 'departamentores_id', validate: true, optional: true
  belongs_to :municipiores, class_name: 'Msip::Municipio',
    foreign_key: 'municipiores_id', validate: true, optional: true

  has_many :idioma_victimasjr, class_name: "::IdiomaVictimasjr", 
    foreign_key: "sivel2_sjr_victimasjr_id", validate: true,
    dependent: :delete_all
  has_many :idioma, through: :idioma_victimasjr, class_name: "Sivel2Sjr::Idioma"

  has_many :tienetierra_victimasjr, 
    class_name: "::TienetierraVictimasjr", 
    foreign_key: "sivel2_sjr_victimasjr_id", validate: true,
    dependent: :delete_all
  has_many :tienetierra, through: :tienetierra_victimasjr, 
    class_name: "::Tienetierra"


  validates :cabezahogar, length: { maximum: 1}
  validates :comoingresos, length: { maximum: 5000 }
  validates :comotierra, length: { maximum: 5000 }
  validates :comunidadnac, length: { maximum: 500 }
  validates :comunidadres, length: { maximum: 500 }
  validates :incluidoruv, length: { maximum: 1}
  validates :liderazgo, length: { maximum: 1}
  validates :municipiores, length: { maximum: 500 }
  validates :organizacionfilial, length: { maximum: 500 }
  validates :resguardonac, length: { maximum: 500 }
  validates :resguardores, length: { maximum: 500 }
  validates :residencia, length: { maximum: 5000 }
  validates :sistemasalud, length: { maximum: 1 }
  validates :tipoliderazgo, length: { maximum: 5000 }
  validates :vicconflicto, length: { maximum: 1}
end

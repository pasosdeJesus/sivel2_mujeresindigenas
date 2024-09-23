module Sivel2Sjr
  class Victimasjr < ActiveRecord::Base

    include Msip::Modelo

    self.table_name = "sivel2_sjr_victimasjr"

    # Orden de esquema en base
    belongs_to :actividadoficio, 
      class_name: "Sivel2Gen::Actividadoficio", 
      foreign_key: "actividadoficio_id", validate: true, optional: true
    belongs_to :departamento, class_name: "Msip::Departamento", 
      foreign_key: "departamento_id", validate: true, optional: true
    belongs_to :departamentores, class_name: 'Msip::Departamento',
      foreign_key: 'departamentores_id', validate: true, optional: true
    belongs_to :discapacidad, validate: true, 
      optional: true
    belongs_to :educacionpropia, class_name: '::Educacionpropia',
      foreign_key: 'educacionpropia_id', validate: true, optional: true
    belongs_to :escolaridad, class_name: "Sivel2Gen::Escolaridad", 
      foreign_key: "escolaridad_id", validate: true, optional: true
    belongs_to :estadocivil, class_name: "Sivel2Gen::Estadocivil", 
      foreign_key: "estadocivil_id", validate: true, optional: true
    belongs_to :maternidad, class_name: "Sivel2Gen::Maternidad", 
      foreign_key: "maternidad_id", validate: true, optional: true
    belongs_to :municipio, class_name: "Msip::Municipio", 
      foreign_key: "municipio_id", validate: true, optional: true
    belongs_to :municipiores, class_name: 'Msip::Municipio',
      foreign_key: 'municipiores_id', validate: true, optional: true
    belongs_to :pais, class_name: "Msip::Pais", 
      foreign_key: "pais_id", validate: true, optional: true
    belongs_to :poblacionespecial, 
      class_name: "::Poblacionespecial", 
      foreign_key: "poblacionespecial_id", 
      validate: true, 
      optional: false
    belongs_to :regimensalud, class_name: "Sivel2Sjr::Regimensalud", 
      foreign_key: "regimensalud_id", validate: true, optional: true
    belongs_to :religion, class_name: '::Religion',
      foreign_key: 'religion_id', validate: true, optional: true
    belongs_to :rolfamilia, class_name: "Sivel2Sjr::Rolfamilia", 
      foreign_key: "rolfamilia_id", validate: true, optional: true
    # no validamos :victima porque el controlador crea nuevos 
    # (con persona en nombre vacio y victima no es valido)
    belongs_to :victima, class_name: "Sivel2Gen::Victima", 
      foreign_key: "victima_id", inverse_of: :victimasjr, 
      optional: false


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
    validates :contacto, length: { maximum: 255 }
    validates :contactodeconfianza, length: { maximum: 255 }
    validates :incluidoruv, length: { maximum: 1}
    validates :liderazgo, length: { maximum: 1}
    validates :municipiores, length: { maximum: 500 }
    validates :ocupacion, length: { maximum: 255 }
    validates :organizacionfilial, length: { maximum: 500 }
    validates :resguardonac, length: { maximum: 500 }
    validates :resguardores, length: { maximum: 500 }
    validates :residencia, length: { maximum: 5000 }
    validates :sistemasalud, length: { maximum: 1 }
    validates :tipoliderazgo, length: { maximum: 5000 }
    validates :vicconflicto, length: { maximum: 1}

  end
end

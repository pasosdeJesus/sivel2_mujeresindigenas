module Sivel2Sjr
  class Respuesta < ActiveRecord::Base

    include Msip::Modelo

    self.table_name = "sivel2_sjr_respuesta"

    belongs_to :caso, class_name: "Sivel2Gen::Caso", 
      foreign_key: "caso_id", optional: false

    has_and_belongs_to_many :aslegal, 
      class_name: "Sivel2Sjr::Aslegal", 
      foreign_key: "respuesta_id", 
      validate: true, 
      association_foreign_key: "aslegal_id",
      join_table: 'sivel2_sjr_aslegal_respuesta'
    #accepts_nested_attributes_for :aslegal_respuesta, 
    #  reject_if: :all_blank, update_only: true

    has_and_belongs_to_many :aspsicosocial, 
      class_name: "Sivel2Sjr::Aspsicosocial", 
      foreign_key: "respuesta_id",
      association_foreign_key: "aspsicosocial_id",
      join_table: 'sivel2_sjr_aspsicosocial_respuesta'

    has_and_belongs_to_many :ayudasjr, 
      class_name: "Sivel2Sjr::Ayudasjr", 
      foreign_key: "respuesta_id",
      association_foreign_key: "ayudasjr_id",
      join_table: 'sivel2_sjr_ayudasjr_respuesta'

    #accepts_nested_attributes_for :derecho_respuesta, 
    #  reject_if: :all_blank, update_only: true

    #accepts_nested_attributes_for :ayudaestado_respuesta, 
    #        reject_if: :all_blank, update_only: true
    has_and_belongs_to_many :ayudaestado, 
      class_name: 'Sivel2Sjr::Ayudaestado', 
      foreign_key: 'respuesta_id', 
      validate: true,
      association_foreign_key: 'ayudaestado_id',
      join_table: 'sivel2_sjr_ayudaestado_respuesta'  

    has_many :accionjuridica_respuesta, 
            class_name: "Sivel2Sjr::AccionjuridicaRespuesta",  
            foreign_key: "respuesta_id", validate: true,
            dependent: :delete_all
    accepts_nested_attributes_for :accionjuridica_respuesta, 
            reject_if: :all_blank, allow_destroy: true
    has_many :accionjuridica, class_name: "Sivel2Sjr::Accionjuridica", 
            :through => :accionjuridica_respuesta

    #accepts_nested_attributes_for :derecho_respuesta, reject_if: :all_blank, 
    #        update_only: true
    has_and_belongs_to_many :derecho, 
      class_name: "Sivel2Sjr::Derecho", 
      foreign_key: "respuesta_id", 
      validate: true,
      association_foreign_key: 'derecho_id',
      join_table: 'sivel2_sjr_derecho_respuesta'

    #accepts_nested_attributes_for :motivosjr_respuesta, 
    #        reject_if: :all_blank, update_only: true
    has_and_belongs_to_many :motivosjr, 
      class_name: 'Sivel2Sjr::Motivosjr', 
      foreign_key: 'respuesta_id', 
      association_foreign_key: 'motivosjr_id',
      join_table: 'sivel2_sjr_motivosjr_respuesta'

    #accepts_nested_attributes_for :progestado_respuesta, 
    #        reject_if: :all_blank, update_only: true
    has_and_belongs_to_many :progestado, 
      class_name: 'Sivel2Sjr::Progestado', 
      foreign_key: 'respuesta_id', 
      validate: true,
      association_foreign_key: 'progestado_id',
      join_table: 'sivel2_sjr_progestado_respuesta'

    validates :fechaatencion, uniqueness: {
      scope: :caso_id,
      message: 'En un caso no puede repetirse fecha de atención'
    }
  end
end

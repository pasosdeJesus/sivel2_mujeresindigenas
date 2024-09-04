require 'sivel2_gen/concerns/models/victima'

module Sivel2Gen
  class Victima < ActiveRecord::Base

    # Lo ponemos antes del include de Victima para que se ejecute antes
    before_destroy do
      Sivel2Sjr::Actosjr.where("acto_id IN (SELECT id FROM sivel2_gen_acto
                              WHERE caso_id=? AND persona_id=?)", 
                              caso_id, persona_id).delete_all
    end

    include Sivel2Gen::Concerns::Models::Victima

    #has_many :antecedente_victima, foreign_key: :victima_id, 
    #  validate: true, dependent: :destroy

    has_one :victimasjr, 
      class_name: 'Sivel2Sjr::Victimasjr', 
      dependent: :destroy,
      foreign_key: "victima_id",
      inverse_of: :victima,
      validate: true
    accepts_nested_attributes_for :victimasjr, reject_if: :all_blank,
      update_only: true

    attr_accessor :rangoedadactual_id
    belongs_to :rangoedadactual, foreign_key: "rangoedadactual_id", 
      validate: true, class_name: "Sivel2Gen::Rangoedad", optional: true


  end
end

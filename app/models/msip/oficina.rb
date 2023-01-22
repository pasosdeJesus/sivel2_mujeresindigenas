require 'msip/concerns/models/oficina'

module Msip
  class Oficina < ActiveRecord::Base
    include Msip::Concerns::Models::Oficina

    has_many :plantillahcm, 
      class_name: "Heb412Gen::Plantillahcm",  
      foreign_key: "oficina_id", validate:true, dependent: :delete_all
  end
end

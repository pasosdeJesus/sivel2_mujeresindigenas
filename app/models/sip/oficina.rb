require 'sip/concerns/models/oficina'

module Sip
  class Oficina < ActiveRecord::Base
    include Sip::Concerns::Models::Oficina

    has_many :plantillahcm, 
      class_name: "Heb412Gen::Plantillahcm",  
      foreign_key: "oficina_id", validate:true, dependent: :delete_all
  end
end

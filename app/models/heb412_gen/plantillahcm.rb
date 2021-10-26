require 'heb412_gen/concerns/models/plantillahcm'

module Heb412Gen
  class Plantillahcm < ActiveRecord::Base
    include Heb412Gen::Concerns::Models::Plantillahcm

    belongs_to :oficina, class_name: 'Sip::Oficina',
      foreign_key: 'oficina_id', validate: true
  end
end

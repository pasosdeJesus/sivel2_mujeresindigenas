module Sivel2Sjr
  class Actosjr < ActiveRecord::Base

    include Msip::Modelo

    self.table_name = "sivel2_sjr_actosjr"

    belongs_to :acto, class_name: "Sivel2Gen::Acto", 
      foreign_key: "acto_id", inverse_of: :actosjr,
      dependent: :delete, optional: false
  end
end

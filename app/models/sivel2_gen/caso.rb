require 'sivel2_sjr/concerns/models/caso'

class Sivel2Gen::Caso < ActiveRecord::Base
  include Sivel2Sjr::Concerns::Models::Caso

  has_many :evento, class_name: '::Evento',
    foreign_key: "caso_id", validate:true, dependent: :destroy
  accepts_nested_attributes_for :evento, allow_destroy: true, 
    reject_if: :all_blank

  def caso_no_vacio
  end
end

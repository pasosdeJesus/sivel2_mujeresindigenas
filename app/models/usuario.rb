require 'sivel2_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base
  include Sivel2Gen::Concerns::Models::Usuario

  belongs_to :oficina, foreign_key: "oficina_id", validate: true,
    class_name: 'Msip::Oficina', optional: true

end


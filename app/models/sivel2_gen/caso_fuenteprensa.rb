require 'sivel2_gen/concerns/models/caso_fuenteprensa'

module Sivel2Gen
  class CasoFuenteprensa < ActiveRecord::Base
    include Sivel2Gen::Concerns::Models::CasoFuenteprensa

    protected

    def saltar_fuente_tras_caso?
      true
    end

  end
end

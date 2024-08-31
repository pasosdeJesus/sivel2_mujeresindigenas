require 'jos19/concerns/models/persona'

class Msip::Persona < ActiveRecord::Base
  include Jos19::Concerns::Models::Persona

  def vformatonumdoc
  end
end



module Sivel2Sjr
  class Idioma < ActiveRecord::Base
    include Msip::Basica

    self.table_name = "sivel2_sjr_idioma"
  end
end


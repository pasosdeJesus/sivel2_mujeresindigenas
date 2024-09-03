module Sivel2Sjr
  class EtiquetaUsuario < ActiveRecord::Base

    self.table_name = 'sivel2_sjr_etiqueta_usuario'

    belongs_to :etiqueta, class_name: "Msip::Etiqueta",
      foreign_key: "etiqueta_id", validate: true, optional: false
    belongs_to :usuario, class_name: "Usuario", 
      foreign_key: "usuario_id", validate: true, optional: false
  end
end

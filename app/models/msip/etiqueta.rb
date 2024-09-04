require 'sivel2_gen/concerns/models/etiqueta'

module Msip
  class Etiqueta < ActiveRecord::Base

    include Sivel2Gen::Concerns::Models::Etiqueta

    has_many :etiqueta_usuario, class_name: 'Sivel2Sjr::EtiquetaUsuario',
      dependent: :delete_all
    has_many :usuario, class_name: 'Usuario', through: :etiqueta_usuario

  end
end

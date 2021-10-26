require 'sivel2_sjr/concerns/controllers/usuarios_controller'

class UsuariosController < Sip::ModelosController

  # No se define autorización
  include Sivel2Sjr::Concerns::Controllers::UsuariosController
end


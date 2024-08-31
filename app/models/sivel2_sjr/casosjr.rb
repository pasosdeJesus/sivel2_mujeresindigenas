
module Sivel2Sjr
  class Casosjr < ActiveRecord::Base

    include Msip::Modelo

    self.table_name = 'sivel2_sjr_casosjr'

    self.primary_key = :caso_id

    has_many :casosjr_estadocaso, class_name: "::CasosjrEstadocaso", 
      foreign_key: "sivel2_sjr_casosjr_id", validate: true
    has_many :estadocaso, through: :casosjr_estadocaso, class_name: "::Estadocaso"

    has_many :acompanamiento_casosjr, 
      class_name: "::AcompanamientoCasosjr", 
      foreign_key: "sivel2_sjr_casosjr_id", validate: true,
      dependent: :delete_all
    has_many :acompanamiento, through: :acompanamiento_casosjr, 
      class_name: "::Acompanamiento"

    validates :consentimiento, length: { maximum: 1}

    # Ordenados por foreign_key para comparar con esquema en base
    belongs_to :usuario, class_name: "Usuario", 
      foreign_key: "asesor", validate: true, optional: false
    belongs_to :comosupo, class_name: "Sivel2Sjr::Comosupo", 
      foreign_key: "comosupo_id", validate: true, optional: true
    belongs_to :contacto, class_name: "Msip::Persona",  
      foreign_key: "contacto_id", optional: false
    belongs_to :caso, class_name: "Sivel2Gen::Caso", validate: true,
      foreign_key: "caso_id", inverse_of: :casosjr, optional: false
    belongs_to :categoria, class_name: "Sivel2Gen::Categoria", 
      validate: true, foreign_key: "categoriaref", optional: true
    belongs_to :idioma, class_name: "Sivel2Sjr::Idioma", 
      foreign_key: "idioma_id", validate: true, optional: true
    belongs_to :llegada, class_name: "Msip::Ubicacion", validate: true,
      foreign_key: "llegada_id", optional: true
    belongs_to :llegadam, class_name: 'Msip::Ubicacion', validate: true,
      foreign_key: 'llegada_idm', optional: true
    belongs_to :proteccion, class_name: "Sivel2Sjr::Proteccion", 
      foreign_key: "proteccion_id", validate: true, optional: true
    belongs_to :oficina, class_name: "Msip::Oficina", 
      foreign_key: "oficina_id", validate: true, optional: true
    belongs_to :salida, class_name: "Msip::Ubicacion", validate: true,
      foreign_key: "salida_id", optional: true
    belongs_to :salidam, class_name: 'Msip::Ubicacion', validate: true,
      foreign_key: 'salida_idm', optional: true
    belongs_to :statusmigratorio, 
      class_name: "Sivel2Sjr::Statusmigratorio", 
      foreign_key: "estatusmigratorio_id", validate: true, optional: true

    has_many :respuesta, class_name: "Sivel2Sjr::Respuesta", 
      validate: true, foreign_key: "caso_id"#, dependent: :destroy

    has_many :victima, class_name: 'Sivel2Gen::Victima', validate: true,
      through: :caso

    has_many :victimasjr, class_name: 'Sivel2Sjr::Victimasjr', validate: true,
      through: :victima


    # Verifica que un usuario edita caso de su oficina
    def self.asesor_edita_de_su_oficina(current_usuario, oficina)
      (current_usuario.rol != Ability::ROLCOOR &&
       current_usuario.rol != Ability::ROLANALI) ||
      oficina.id == current_usuario.oficina_id
    end

    validate :rol_usuario
    def rol_usuario
      if (caso && caso.current_usuario && 
          !Sivel2Sjr::Casosjr::asesor_de_oficina(
            caso.current_usuario, usuario, oficina))
        errors.add(:usuario, "Asesor debe ser de oficina")
      end
      if (caso && caso.current_usuario &&
          !Sivel2Sjr::Casosjr::asesor_edita_de_su_oficina(
            caso.current_usuario, oficina))
        errors.add(:oficina, "Solo puede editar casos de su oficina")
      end
    end

    validate :fecharec_pasada
    def fecharec_pasada
      if fecharec && fecharec>Date.today
        errors.add(:fecharec, 
                   " la fecha de recepción debe ser en el pasado")
      end
    end

  end
end

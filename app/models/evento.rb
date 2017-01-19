# encoding: UTF-8

class Evento < ActiveRecord::Base 

  belongs_to :caso, class_name: "Sivel2Gen::Caso", 
    foreign_key: "caso_id"
  belongs_to :departamento, class_name: "Sip::Departamento", 
    foreign_key: "departamento_id"
  belongs_to :municipio, class_name: "Sip::Municipio", 
    foreign_key: "municipio_id"

  has_many :acompanamiento_evento, validate: true, 
    dependent: :delete_all
  has_many :acompanamiento, through: :acompanamiento_evento

  has_many :acompanamientorec_evento, validate: true, 
    dependent: :delete_all
  has_many :acompanamientorec, class_name: '::Acompanamiento',
    through: :acompanamientorec_evento


  has_many :actoevento, 
    class_name: "::Actoevento",  
    foreign_key: "evento_id", validate:true, dependent: :delete_all
  accepts_nested_attributes_for :actoevento,
    reject_if: :all_blank, allow_destroy: true

  has_many :consecuenciaindividual_evento, validate: true, 
    dependent: :delete_all
  has_many :consecuenciaindividual, through: :consecuenciaindividual_evento

  has_many :consecuenciafamiliar_evento, validate: true, dependent: :delete_all
  has_many :consecuenciafamiliar, through: :consecuenciafamiliar_evento

  has_many :consecuenciafisica_evento, validate: true, dependent: :delete_all
  has_many :consecuenciafisica, through: :consecuenciafisica_evento

  has_many :evento_tafectacion, validate: true, dependent: :delete_all
  has_many :tafectacion, through: :evento_tafectacion

  has_many :evento_tapoyo, validate: true, dependent: :delete_all
  has_many :tapoyo, through: :evento_tapoyo

  has_many :evento_relacionprvic, validate: true, dependent: :delete_all
  has_many :relacionprvic, through: :evento_relacionprvic

  has_many :eventopresponsable, 
    class_name: "::Eventopresponsable",  
    foreign_key: "evento_id", validate:true, dependent: :delete_all
  accepts_nested_attributes_for :eventopresponsable,
    reject_if: :all_blank, allow_destroy: true

  has_many :evento_motivonodenuncia, 
    class_name: '::EventoMotivonodenuncia',
    foreign_key: "evento_id", validate:true, dependent: :delete_all
  has_many :motivonodenuncia, through: :evento_motivonodenuncia,
    class_name: "::Motivonodenuncia"

  validates :situacionriesgo, length: { maximum: 1 }
  validates :solicitomedidas, length: {maximum: 1}
  validates :denuncia, length: {maximum: 1}
  validates :denunciaante, length: {maximum: 1}
  validates :testigo, length: {maximum: 1}
  validates :afectacionotra, length: {maximum: 1}
  validates :quisieradenunciar, length: {maximum: 1}
  validates :recibidoreparacion, length: {maximum: 1}
  validates :valoracionjusticia, length: {maximum: 1}
  validates :relacionadocon, length: { maximum: 1}

  validates :acompnecesita, length: {maximum: 5000}
  validates :actividadesdejadas, length: {maximum: 5000}
  validates :avancescaso, length: {maximum: 5000}
  validates :brindadaproteccion, length: {maximum: 5000}
  validates :compromisosadquiridos, length: {maximum: 5000}
  validates :comunidad, length: {maximum: 500}
  validates :descripcionafectacion, length: {maximum: 5000}
  validates :etapaproceso, length: {maximum: 500}
  validates :medidasrecibidas, length: {maximum: 5000}
  validates :observaciones, length: {maximum: 5000}
  validates :relacionprespvic, length: {maximum: 500}
  validates :resguardo, length: {maximum: 500}
  validates :reaccionfamiliaycomunidad, length: {maximum: 5000}
  validates :seguimientojudicial, length: {maximum: 5000}
  validates :seguimientopsicosocial, length: {maximum: 5000}

end

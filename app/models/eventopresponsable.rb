# encoding: UTF-8

class Eventopresponsable < ActiveRecord::Base
  belongs_to :evento, class_name: '::Evento', foreign_key: "evento_id"
  belongs_to :presponsable, class_name: 'Sivel2Gen::Presponsable',
    foreign_key: "presponsable_id"

  has_many :categoria_eventopresponsable, validate: true, 
    dependent: :destroy, inverse_of: :eventopresponsable

  has_many :categoria, through: :categoria_eventopresponsable,
    class_name: 'Sivel2Gen::Categoria'

  validates_presence_of :evento
  validates_presence_of :presponsable

  validates_uniqueness_of :presponsable, scope: :evento_id
end

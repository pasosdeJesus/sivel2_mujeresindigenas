class Actoevento < ActiveRecord::Base
  belongs_to :evento, class_name: '::Evento', 
    foreign_key: "evento_id", optional: false
  belongs_to :presponsable, class_name: 'Sivel2Gen::Presponsable',
    foreign_key: "presponsable_id", optional: false
  belongs_to :categoria, class_name: 'Sivel2Gen::Categoria',
    foreign_key: "categoria_id", optional: false#, validate: true

  validates_presence_of :evento
  validates_presence_of :presponsable
  validates_presence_of :categoria
end

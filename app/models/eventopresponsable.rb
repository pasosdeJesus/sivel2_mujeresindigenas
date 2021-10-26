class Eventopresponsable < ActiveRecord::Base
  belongs_to :evento 
  belongs_to :presponsable, class_name: 'Sivel2Gen::Presponsable',
    foreign_key: "presponsable_id"

  has_and_belongs_to_many :categoria, 
    class_name: 'Sivel2Gen::Categoria',
    foreign_key: "eventopresponsable_id", 
    validate: true,
    association_foreign_key: 'categoria_id',
    join_table: 'categoria_eventopresponsable'

  validates_presence_of :evento
  validates_presence_of :presponsable

  validates_uniqueness_of :presponsable, scope: :evento_id
end

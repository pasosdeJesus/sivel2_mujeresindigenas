class CategoriaEventopresponsable < ActiveRecord::Base
  belongs_to :categoria, class_name: 'Sivel2Gen::Categoria', 
    foreign_key: "categoria_id", inverse_of: :categoria_eventopresponsable, 
    optional: false

  belongs_to :eventopresponsable, class_name: '::Eventopresponsable',
    foreign_key: "eventopresponsable_id", optional: false

  #validates_presence_of :categoria
  #validates_presence_of :eventopresponsable
end

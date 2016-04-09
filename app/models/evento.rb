# encoding: UTF-8

class Evento < ActiveRecord::Base 

  belongs_to :caso, class_name: "Sivel2Gen::Caso", 
    foreign_key: "caso_id"

  has_many :actoevento, 
    class_name: "::Actoevento",  
    foreign_key: "evento_id", validate:true, dependent: :destroy
  accepts_nested_attributes_for :actoevento,
    reject_if: :all_blank, update_only: true
end

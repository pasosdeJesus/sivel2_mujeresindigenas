# encoding: UTF-8

FactoryGirl.define do
  factory :estadocaso, class: 'Estadocaso' do
    id 1000 # Buscamos que no interfiera con existentes
    nombre "Estadocaso"
    fechacreacion "2016-07-27"
    created_at "2016-07-27"
  end
end

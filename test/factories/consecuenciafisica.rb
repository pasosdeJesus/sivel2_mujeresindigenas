# encoding: UTF-8

FactoryGirl.define do
  factory :consecuenciafisica, class: 'Consecuenciafisica' do
    id 1000 # Buscamos que no interfiera con existentes
    nombre "Consecuenciafisica"
    fechacreacion "2016-06-08"
    created_at "2016-06-08"
  end
end

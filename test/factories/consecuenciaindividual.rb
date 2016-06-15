# encoding: UTF-8

FactoryGirl.define do
  factory :consecuenciaindividual, class: 'Consecuenciaindividual' do
    id 1000 # Buscamos que no interfiera con existentes
    nombre "Consecuenciaindividual"
    fechacreacion "2016-06-08"
    created_at "2016-06-08"
  end
end

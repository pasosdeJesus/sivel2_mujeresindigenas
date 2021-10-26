FactoryGirl.define do
  factory :tapoyo, class: 'Tapoyo' do
    id 1000 # Buscamos que no interfiera con existentes
    nombre "Tapoyo"
    fechacreacion "2016-06-08"
    created_at "2016-06-08"
  end
end

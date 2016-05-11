# encoding: UTF-8

Rails.application.routes.draw do

  scope 'mujeresindigenas/sivel2' do
    devise_scope :usuario do
      get 'sign_out' => 'devise/sessions#destroy'
    end
    devise_for :usuarios, :skip => [:registrations], module: :devise
      as :usuario do
            get 'usuarios/edit' => 'devise/registrations#edit', 
              :as => 'editar_registro_usuario'    
            put 'usuarios/:id' => 'devise/registrations#update', 
              :as => 'registro_usuario'            
    end
    resources :usuarios, path_names: { new: 'nuevo', edit: 'edita' } 
  
    root 'sip/hogar#index'
#    patch "/actos/agregar" => 'sivel2_sjr/actos#agregar'
    get "/actosevento/eliminar" => 'actosevento#eliminar'
    get "/personas" => 'sivel2_sjr/personas#index'
    get "/personas/remplazar" => 'sivel2_sjr/personas#remplazar'
     get '/eventos/nuevo' => 'eventos#nuevo'  
  end

  mount Sivel2Sjr::Engine, at: '/mujeresindigenas/sivel2', as: 'sivel2_sjr'
  mount Sivel2Gen::Engine, at: '/mujeresindigenas/sivel2', as: 'sivel2_gen'
  mount Sip::Engine, at: '/mujeresindigenas/sivel2', as: 'sip'

end
#
#  namespace :admin do
#    ::Ability.tablasbasicas.each do |t|
#      if (t[0] == "") 
#        c = t[1].pluralize
#        resources c.to_sym, 
#          path_names: { new: 'nueva', edit: 'edita' }
#      end
#    end



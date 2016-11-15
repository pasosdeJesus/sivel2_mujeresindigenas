# encoding: UTF-8

Rails.application.routes.draw do

  scope 'mujeresindigenas/sivel2' do
    devise_scope :usuario do
      get 'sign_out' => 'devise/sessions#destroy'

      # El siguiente para superar mala generación del action en el formulario
      # cuando se autentica mal (genera 
      # /mujeresindigenas/sivel2/mujeresindigenas/sivel2/usuarios/sign_in )
      if (Rails.configuration.relative_url_root != '/') 
        ruta = File.join(Rails.configuration.relative_url_root, 'usuarios/sign_in')
        post ruta, to: 'devise/sessions#create'
      end
    end
    devise_for :usuarios, :skip => [:registrations], module: :devise
      as :usuario do
            get 'usuarios/edit' => 'devise/registrations#edit', 
              :as => 'editar_registro_usuario'    
            put 'usuarios/:id' => 'devise/registrations#update', 
              :as => 'registro_usuario'            
    end
    resources :usuarios, path_names: { new: 'nuevo', edit: 'edita' } 
 
    namespace :admin do
      ab = ::Ability.new
      ab.tablasbasicas.each do |t|
        if (t[0] == "") 
          c = t[1].pluralize
          resources c.to_sym, 
            path_names: { new: 'nueva', edit: 'edita' }
        end
      end
    end

    root 'sip/hogar#index'
    get "/personas" => 'sivel2_sjr/personas#index'
    get "/personas/remplazar" => 'sivel2_sjr/personas#remplazar'
    get '/eventos/nuevo' => 'eventos#nuevo'  

  end

  mount Sivel2Sjr::Engine, at: '/mujeresindigenas/sivel2', as: 'sivel2_sjr'
  mount Sivel2Gen::Engine, at: '/mujeresindigenas/sivel2', as: 'sivel2_gen'
  mount Sip::Engine, at: '/mujeresindigenas/sivel2', as: 'sip'

end


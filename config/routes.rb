Rails.application.routes.draw do

  devise_scope :usuario do
    get 'sign_out' => 'devise/sessions#destroy'
    get 'salir' => 'devise/sessions#destroy',
      as: :terminar_sesion

    post 'usuarios/iniciar_sesion', to: 'devise/sessions#create'
    get 'usuarios/iniciar_sesion', to: 'devise/sessions#new',
      as: :iniciar_sesion


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

  get "/bitacora7z" => 'msip/bitacora7z#new', as: 'bitacora7z'
  post "/bitacora7z" => 'msip/bitacora7z#create'
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

  root 'msip/hogar#index'
  get '/eventos/nuevo' => 'eventos#nuevo'  


  mount Jos19::Engine, at: "/", as: 'jos19'
  mount Sivel2Gen::Engine, at: "/", as: 'sivel2_gen'
  mount Cor1440Gen::Engine, at: "/", as: 'cor1440_gen'
  mount Mr519Gen::Engine, at: "/", as: 'mr519_gen'
  mount Heb412Gen::Engine, at: "/", as: 'heb412_gen'
  mount Msip::Engine, at: "/", as: 'msip'

end


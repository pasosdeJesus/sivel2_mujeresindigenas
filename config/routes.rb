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


  # De sivel2_sjr

  get '/casos/lista' => 'sivel2_sjr/casos#lista'
  get '/casos/mapaosm' => 'sivel2_sjr/casos#mapaosm'
  get '/casos/nuevaubicacion' => 'sivel2_sjr/casos#nueva_ubicacion'
  get '/casos/nuevavictima' => 'sivel2_sjr/casos#nueva_victima'
  get '/casos/nuevopresponsable' => 'sivel2_sjr/casos#nuevo_presponsable'
  get '/casos/busca' => 'sivel2_sjr/casos#busca'
  get '/casos/filtro' => 'sivel2_sjr/casos#index', as: :casos_filtro
  post '/casos/filtro' => 'sivel2_sjr/casos#index', as: :envia_casos_filtro

  get '/conteos/personas' => 'sivel2_sjr/conteos#personas', as: :conteos_personas
  post "/conteos/personas" => 'sivel2_sjr/conteos#personas', as: :post_conteos_personas
  get '/conteos/respuestas' => 'sivel2_sjr/conteos#respuestas', as: :conteos_respuestas

  get '/desplazamientos/nuevo' => 'sivel2_sjr/desplazamientos#nuevo'

  get '/respuestas/nuevo' => 'sivel2_sjr/respuestas#nuevo'

  #  get '/victimas' => 'victimas#index', as: :victimas
  #  get '/victimas/nuevo' => 'victimas#nuevo'
  get '/victimascolectivas/nuevo' => 'sivel2_sjr/victimascolectivas#nuevo'

  get "/api/sivel2sjr/poblacion_sexo_rangoedadac" => 'sivel2_sjr/casos#poblacion_sexo_rangoedadac',
    as: :sivel2sjr_poblacion_sexo_rangoedadac

  resources :casos, path_names: { new: 'nuevo', edit: 'edita' }, 
    controller: 'sivel2_sjr/casos'

  # Fin de sivel2_sjr

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


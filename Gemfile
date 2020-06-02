source 'https://rubygems.org'


gem 'bcrypt'

gem 'bootsnap', '>=1.1.0', require: false

gem 'bigdecimal'

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

# CoffeeScript para recuersos .js.coffee y vistas
gem 'coffee-rails'

gem 'devise' # Autenticación y roles

gem 'devise-i18n'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'libxml-ruby'

gem 'paperclip' # Maneja adjuntos

gem 'pg' # Postgresql

gem 'puma'

gem 'rails', '~> 6.0.3.1' # Rails (internacionalización)

gem 'rails-i18n'

gem 'redcarpet'

gem 'rspreadsheet'

gem 'rubyzip', '>=2.0.0'

gem 'sassc-rails' # CSS

gem 'simple_form' # Formularios simples 

gem 'turbolinks' # Seguir enlaces más rápido. 

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'webpacker'

gem 'will_paginate' # Listados en páginas


#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  git: 'https://github.com/pasosdeJesus/sip.git'
  #path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git'
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git'
  #path: '../heb412_gen'

gem 'cor1440_gen', # Motor de actividades y proyectos financiados con marco lógico
  git: 'https://github.com/pasosdeJesus/cor1440_gen.git'
  #path: '../cor1440_gen'

gem 'sivel2_gen', # Motor de casos de violencia socio política.
  git: 'https://github.com/pasosdeJesus/sivel2_gen.git'
  #path: '../sivel2_gen'

gem 'sivel2_sjr', # Motor de atención a casos
  git: 'https://github.com/pasosdeJesus/sivel2_sjr.git'
  #path: '../sivel2_sjr'



group :test, :development do

  #gem 'byebug' # Depurar

  gem 'colorize' # Color en terminal

end


group :development do

  gem 'rails-erd'
  
  gem 'web-console' # Consola irb en páginas 

end


group :test do

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov'

end


group :production do
  
  gem 'unicorn' # Para despliegue

end



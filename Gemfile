source 'https://rubygems.org'

gem 'rails-erd', require: false, group: :development

#ruby ">= 2.2"

# Rails (internacionalización)
#gem "rails", '~> 5.2.0'
# Resuelve problema con minitest y rails 5.2.0
gem "rails", '~> 5.2.0', git: 'https://github.com/rails/rails.git', ref: '4887f97bd8a8859294ad02ccea20d83a94ec0812'

gem "rails-i18n"

gem 'bootsnap', '>=1.1.0', require: false

# Postgresql
gem "pg"#, '~> 0.21'

gem 'puma'

# CSS
gem "sass"

gem 'chosen-rails'
gem 'font-awesome-rails'

gem 'libxml-ruby'
gem "rspreadsheet"

# Color en terminal
gem "colorize"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier"

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails"

# jquery como librería JavaScript
gem "jquery-rails"

gem "jquery-ui-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks"

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", git: "https://github.com/vtamara/cocoon.git", branch: 'new_id_with_ajax'


# Autenticación y roles
gem "devise"
gem "devise-i18n"
gem "cancancan"
gem "bcrypt"

# Listados en páginas
gem "will_paginate"

# ICU con CLDR
gem 'twitter_cldr'

# Maneja adjuntos
gem "paperclip"

# Zonas horarias
gem "tzinfo"

# Motor de sip
gem 'sip', git: 'https://github.com/pasosdeJesus/sip.git'
#gem 'sip', path: '../sip'

# Motor de SIVeL 2
gem 'sivel2_gen', git: 'https://github.com/pasosdeJesus/sivel2_gen.git'
#gem 'sivel2_gen', path: '../sivel2_gen'

# Motor de nube y plantillas
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git'
#gem 'heb412_gen', path: '../heb412_gen'

group :test, :development do
  # Depurar
  #gem 'byebug'
end


# Los siguientes son para desarrollo o para pruebas con generadores
group :development do

  # Consola irb en páginas con excepciones o usando <%= console %> en vistas
  gem 'web-console'

end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do
  # Acelera ejecutando en fondo.  https://github.com/jonleighton/spring
  gem "spring"

  gem 'rails-controller-testing'

  # Maneja datos de prueba
  #gem "factory_girl_rails", group: [:development, :test]

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  gem "launchy"




  # Envia resultados de pruebas desde travis a codeclimate
  gem 'simplecov'

  gem 'selenium-webdriver'
  gem "connection_pool"
  gem "minitest-reporters"
  gem 'minitest-rails-capybara'
  gem "poltergeist"

  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end


group :production do
  # Para despliegue
  gem "unicorn"

  # Requerido por heroku para usar stdout como bitacora
  gem "rails_12factor"
end



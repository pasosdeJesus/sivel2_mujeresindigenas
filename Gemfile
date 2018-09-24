source 'https://rubygems.org'

gem 'rails-erd', require: false, group: :development

#ruby ">= 2.2"

# Rails (internacionalización)
gem "rails", '~> 5.2.1'

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

gem 'sivel2_sjr', git: 'https://github.com/pasosdeJesus/sivel2_sjr.git'
#gem 'sivel2_sjr', path: '../sivel2_sjr'

# Motor de Cor 1440
gem 'cor1440_gen', git: 'https://github.com/pasosdeJesus/cor1440_gen.git'
#gem 'cor1440_gen', path: '../cor1440_gen'

# Motor de nube y plantillas
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git', branch: :hojacalculo_registro
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
  #gem 'rails-controller-testing'
  gem "launchy"

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



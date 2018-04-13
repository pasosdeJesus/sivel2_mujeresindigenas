source 'https://rubygems.org'

# Rails (internacionalización)
gem "rails", '~> 5.1.0'
gem "rails-i18n"

gem 'bootsnap', '>=1.1.0', require: false

# PDF
gem "prawn"
gem "prawnto_2",  :require => "prawnto"
gem "prawn-table"

# Postgresql
gem "pg"#, '~> 0.21'

gem 'puma'

# Maneja variables de ambiente (como claves y secretos) en .env
gem "foreman"

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# SCSS para hojas de estilo
gem "sass"

# Iconos
gem 'font-awesome-rails'   

# Plantilla de hoja de cálculo
gem 'rspreadsheet'   
gem 'libxml-ruby'

# Colores en terminal
gem "colorize"

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
gem "bootstrap-sass"

gem "chartkick"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", git: "https://github.com/vtamara/cocoon.git"

# Autenticación y roles
gem "devise"
gem "devise-i18n"
gem "cancancan"
gem "bcrypt"

# Cuadros de seleccion mejores
gem 'chosen-rails'

# Listados en páginas
gem "will_paginate"

# ICU con CLDR
gem 'twitter_cldr'

# Maneja adjuntos
gem "paperclip"

# Zonas horarias
gem "tzinfo"

# Motor SIP
gem 'sip', git: "https://github.com/pasosdeJesus/sip.git", branch: 'rails5.2'
#gem 'sip', path: '../sip'

# Motor de heb412
gem 'heb412_gen', git: "https://github.com/pasosdeJesus/heb412_gen.git", branch: 'rails5.2'
#gem 'heb412_gen', path: '../heb412_gen'

# Motor de sivel2
gem 'sivel2_gen', git: "https://github.com/pasosdeJesus/sivel2_gen.git", branch: 'rails5.2'
#gem 'sivel2_gen', path: '../sivel2_gen'

# Motor de SIVeL 2 - SJR
gem 'sivel2_sjr', git: "https://github.com/pasosdeJesus/sivel2_sjr.git", branch: 'rails5.2'
#gem 'sivel2_sjr', path: '../sivel2_sjr'

# Motor Cor1440_gen
gem 'cor1440_gen', git: "https://github.com/pasosdeJesus/cor1440_gen.git", branch: 'rails5.2'
#gem "cor1440_gen", path: '../cor1440_gen'

# Depurar
#gem "byebug"

# Los siguientes son para desarrollo o para pruebas con generadores
group :development do
  
  # Consola irb en páginas con excepciones o usando <%= console %> en vistasA
  gem 'web-console'


end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do

  # Acelera desarrollo ejecutando en fondo.  https://github.com/jonleighton/spring
  gem "spring"

  # Un proceso para cada prueba -- acelera
  gem 'spork'

  gem 'rails-controller-testing'

  # Maneja datos de prueba
  gem "factory_girl_rails", group: [:development, :test]

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  #gem "launchy"

  # Pruebas de regresión que no requieren javascript
  gem "capybara"
  
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end

group :production do
  # Para despliegue
  gem "unicorn"

  # Requerido por heroku para usar stdout como bitacora
  gem "rails_12factor"
end


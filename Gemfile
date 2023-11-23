source "https://rubygems.org"


gem "apexcharts",
  git: "https://github.com/styd/apexcharts.rb.git", branch: :master

gem "bcrypt"

gem "babel-transpiler"

gem "bootsnap", ">=1.1.0", require: false

gem "bigdecimal"

gem "cancancan"

gem "cocoon", git: "https://github.com/vtamara/cocoon.git", branch: "new_id_with_ajax" # Formularios anidados (algunos con ajax)

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails"

gem "devise" # Autenticación y roles

gem "devise-i18n"

gem "jbuilder" # API JSON facil. Ver: https://github.com/rails/jbuilder

gem "jsbundling-rails"

gem "kt-paperclip",                 # Anexos
  git: "https://github.com/kreeti/kt-paperclip.git"

gem "libxml-ruby"

gem "parslet"

gem "pg" # Postgresql

gem "rails", ">= 7.0", "< 7.1"

gem "rails-i18n"

gem "redcarpet"

gem "rspreadsheet"

gem "rubyzip", ">=2.0.0"

gem "sassc-rails" # CSS

gem "simple_form" # Formularios simples 

gem "sprockets-rails"

gem "stimulus-rails"

gem "turbo-rails", "~> 1.0"

gem "twitter_cldr" # ICU con CLDR

gem "tzinfo" # Zonas horarias

gem "will_paginate" # Listados en páginas


#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem "msip", # Motor generico
  git: "https://gitlab.com/pasosdeJesus/msip.git", branch: "renclase"
  #path: "../msip"

gem "mr519_gen", # Motor de gestion de formularios y encuestas
  git: "https://gitlab.com/pasosdeJesus/mr519_gen.git", branch: "renclase"
  #path: "../mr519_gen"

gem "heb412_gen",  # Motor de nube y llenado de plantillas
  git: "https://gitlab.com/pasosdeJesus/heb412_gen.git", branch: "renclase"
  #path: "../heb412_gen"

gem "cor1440_gen", # Motor de actividades y proyectos financiados con marco lógico
  git: "https://gitlab.com/pasosdeJesus/cor1440_gen.git", branch: "renclase"
  #path: "../cor1440_gen"

gem "sivel2_gen", # Motor de casos de violencia socio política.
  git: "https://gitlab.com/pasosdeJesus/sivel2_gen.git", branch: "renclase"
  #path: "../sivel2_gen"

gem "sivel2_sjr", # Motor de atención a casos
  git: "https://gitlab.com/pasosdeJesus/sivel2_sjr.git", branch: "renclase"
  #path: "../sivel2_sjr"


group :test, :development do
  gem "debug" # Depurar

  gem "colorize" # Color en terminal

  gem "dotenv-rails"
end


group :development do
  gem "puma"

  gem "rails-erd"

  gem "web-console" # Consola irb en páginas 
end


group :test do
  gem "capybara"

  gem "cuprite"

  gem "selenium-webdriver"

  gem "simplecov"

end


group :production do
  
  gem "unicorn" # Para despliegue

end



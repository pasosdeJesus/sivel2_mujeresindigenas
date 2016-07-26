require 'sivel2_gen/version'

Sip.setup do |config|
      if ENV['RAILS_ENV'] == 'production'
        config.ruta_anexos = "/var/www/resbase/sivel2_mujeresindigenas/anexos/"
        config.ruta_volcados = "/var/www/resbase/sivel2_mujeresindigenas/bd/"
      else
        config.ruta_anexos = "#{Rails.root}/archivos/"
        config.ruta_volcados = "#{Rails.root}/archivos/bd/"
      end
      # En heroku los anexos son super-temporales
      if !ENV["HEROKU_POSTGRESQL_GREEN_URL"].nil?
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "Mujeres Indigenas " + Sivel2Gen::VERSION
end

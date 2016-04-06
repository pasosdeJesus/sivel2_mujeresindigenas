require 'sivel2_gen/version'

Sip.setup do |config|
      config.ruta_anexos = "/var/www/resbase/sivel2_mujeresindigenas/anexos/"
      config.ruta_volcados = "/var/www/resbase/sivel2_mujeresindigenas/bd/"
      # En heroku los anexos son super-temporales
      if !ENV["HEROKU_POSTGRESQL_GREEN_URL"].nil?
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "Mujeres Indigenas " + Sivel2Gen::VERSION
end

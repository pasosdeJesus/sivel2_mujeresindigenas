require 'sivel2_gen/version'

Sip.setup do |config|
      config.ruta_anexos = "/var/www/resbase/anexos-mujeresindigenas"
      config.ruta_volcados = "/var/www/resbase/sivel2_mujeresindigenas/"
      # En heroku los anexos son super-temporales
      if !ENV["HEROKU_POSTGRESQL_GREEN_URL"].nil?
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "SIVeL - Mujeres Indigenas " + Sivel2Gen::VERSION
end

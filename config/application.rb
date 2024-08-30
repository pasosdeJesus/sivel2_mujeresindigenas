require_relative 'boot'

require "rails"
# Elige los marcos de trabajo que necesitas:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
# require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
require "rails/test_unit/railtie"

# Requerir las gemas listas en el Gemfile, incluyendo gemas que haya
# limitado a :test, :development, o :production.
Bundler.require(*Rails.groups)

module Sivel2Mujeresindigenas
  class Application < Rails::Application

    config.load_defaults Rails::VERSION::STRING.to_f

    config.autoload_lib(ignore: %w(assets tasks))

    # Las configuraciones de config/environments/* tienen precedencia
    # sobre las especifciadas aquí.
    #
    # La configuración de la aplicación debería ir en archivos en
    # config/initializers -- todos los archivos .rb de esa ruta
    # se cargan automáticamente

    # Establecer Time.zone a la zona por omisión y que Active Record se
    # convierta a esa zona.
    # ejecute "rake -D time" para ver tareas relacionadas con encontrar
    # nombres de zonas. Por omisión es UTC.
    config.time_zone = 'America/Bogota'

    # El locale predeterminado es :en y se cargan todas las traducciones
    # de config/locales/*.rb,yml 
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :es

    config.active_record.schema_format = :sql

    #config.railties_order = [:main_app, Sivel2Sjr::Engine, 
    #                         Cor1440Gen::Engine, Sivel2Gen::Engine,
    #                         Heb412Gen::Engine, Mr519Gen::Engine, 
    #                         Msip::Engine, :all]

    puts "CONFIG_HOSTS="+ENV.fetch('CONFIG_HOSTS', 'defensor.info').to_s
    config.hosts.concat(
      ENV.fetch('CONFIG_HOSTS', 'defensor.info').downcase.split(";"))

    config.relative_url_root = ENV.fetch('RUTA_RELATIVA', '/mujeresindigenas/sivel2')

    #    config.action_controller.default_url_options = { 
    #      protocol: 'https',
    #      host: 'localhost',
    #      port: 2300 
    #    }

    config.active_job.queue_adapter = 
      ActiveJob::QueueAdapters::AsyncAdapter.new \
      min_threads: 1,
      max_threads: 2 * Concurrent.processor_count,
      idletime: 3600.seconds


    # msip
    config.x.formato_fecha = ENV.fetch('FORMATO_FECHA', 'yyyy-mm-dd')

    # heb412
    config.x.heb412_ruta = Pathname(
      ENV.fetch('HEB412_RUTA', 
                Rails.root.join('public', 'mujeresindigenas', 'sivel2',
                                'heb412').to_s)
    )

    # sivel2
    config.x.sivel2_consulta_web_publica = ENV['SIVEL2_CONSWEB_PUBLICA'] &&
      ENV['SIVEL2_CONSWEB_PUBLICA'] != ''

    config.x.sivel2_consweb_max = ENV.fetch('SIVEL2_CONSWEB_MAX', 2000)

    config.x.sivel2_consweb_epilogo = ENV.fetch(
      'SIVEL2_CONSWEB_EPILOGO',
      "<br>Si requiere más puede suscribirse a SIVeL Pro"
    ).html_safe

    config.x.sivel2_mapaosm_diasatras = ENV.fetch(
      'SIVEL2_CONSWEB_EPILOGO', 182)

    # cor1440
    config.x.cor1440_permisos_por_oficina = 
      (ENV['COR1440_PERMISOS_POR_OFICINA'] && ENV['COR1440_PERMISOS_POR_OFICINA'] != '')
   end
end

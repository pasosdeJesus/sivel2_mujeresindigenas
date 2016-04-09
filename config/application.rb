require File.expand_path('../boot', __FILE__)

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sivel2Mujeresindigenas
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Bogota'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :es

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Esquema en SQL
    config.active_record.schema_format = :sql

    config.relative_url_root = "/mujeresindigenas/sivel2"

    # config.x.formato_fecha = 'yyyy-mm-dd'
    # Recordar que si se cambia a dd/M/yyyy deben declararse campos de fecha en modelo con fecha_ddMyy, ver https://github.com/pasosdeJesus/sip/wiki/Localizaci%C3%B3n-de-cantidades-monetarias-y-fechas
  end
end

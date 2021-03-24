Sivel2Mujeresindigenas::Application.config.relative_url_root = ENV.fetch(
  'RUTA_RELATIVA', '/mujeresindigenas/sivel2/')
Sivel2Mujeresindigenas::Application.config.assets.prefix = ENV.fetch(
  'RUTA_RELATIVA', '/mujeresindigenas/sivel2/') + 'assets'

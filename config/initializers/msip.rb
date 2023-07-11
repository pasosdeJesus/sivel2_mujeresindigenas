require 'sivel2_sjr/version'
Msip.setup do |config|
  config.ruta_anexos = ENV.fetch('MSIP_RUTA_ANEXOS', 
                                 "#{Rails.root}/archivos/anexos")
  config.ruta_volcados = ENV.fetch('MSIP_RUTA_VOLCADOS',
                                   "#{Rails.root}/archivos/bd")
  # En heroku los anexos son super-temporales
  if !ENV["HEROKU_POSTGRESQL_GREEN_URL"].nil?
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "Mujeres Indigenas #{Sivel2Gen::VERSION}"

  config.colorom_fondo = '#ffffff'
  config.colorom_color_fuente = '#000000'
  config.colorom_nav_ini = '#95c4ff'
  config.colorom_nav_fin = '#266dd3'
  config.colorom_nav_fuente = '#ffffff'
  config.colorom_fondo_lista = '#95c4ff'
  config.colorom_color_flota_subitem_fuente = '#ffffff'
  config.colorom_color_flota_subitem_fondo = '#266dd3'
  config.colorom_btn_primario_fondo_ini = '#0088cc'
  config.colorom_btn_primario_fondo_fin = '#0044cc'
  config.colorom_btn_primario_fuente = '#ffffff'
  config.colorom_btn_peligro_fondo_ini = '#ee5f5b'
  config.colorom_btn_peligro_fondo_fin = '#bd362f'
  config.colorom_btn_peligro_fuente = '#ffffff'
  config.colorom_btn_accion_fondo_ini = '#ffffff'
  config.colorom_btn_accion_fondo_fin= '#e6e6e6'
  config.colorom_btn_accion_fuente = '#000000'
  config.colorom_alerta_exito_fondo = '#dff0d8'
  config.colorom_alerta_exito_fuente = '#468847'
  config.colorom_alerta_problema_fondo = '#f8d7da'
  config.colorom_alerta_problema_fuente = '#721c24'

end

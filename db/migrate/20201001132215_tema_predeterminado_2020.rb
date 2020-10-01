class TemaPredeterminado2020 < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      UPDATE sip_tema SET
        nombre='PREDETERMINADO OBSERVATIRIO MUJERES INDIGENAS',
        fondo = '#f2fff2',
        color_fuente = '#000000',
        nav_ini = '#1d7332',
        nav_fin = '#1c5931',
        nav_fuente = '#ffffff',
        fondo_lista = '#1f8c3a',
        color_flota_subitem_fuente = '#ffffff',
        color_flota_subitem_fondo = '#1f8c3a',
        btn_primario_fondo_ini = '#1c5931',
        btn_primario_fondo_fin = '#1c5931',
        btn_primario_fuente = '#ffffff',
        btn_peligro_fondo_ini = '#a62424',
        btn_peligro_fondo_fin = '#a62424',
        btn_peligro_fuente = '#ffffff',
        btn_accion_fondo_ini = '#1f8c3a',
        btn_accion_fondo_fin= '#1f8c3a',
        btn_accion_fuente = '#ffffff',
        alerta_exito_fondo = '#1f8c3a',
        alerta_exito_fuente = '#f2fff2',
        alerta_problema_fondo = '#f8d7da',
        alerta_problema_fuente = '#721c24'
      WHERE id=1;
    SQL
  end
  def down
    execute <<-SQL
      UPDATE sip_tema SET
        nombre='AZUL POR OMISIÓN',
        fondo = '#ffffff',
        color_fuente = '#000000',
        nav_ini = '#95c4ff',
        nav_fin = '#266dd3',
        nav_fuente = '#ffffff',
        fondo_lista = '#95c4ff',
        color_flota_subitem_fuente = '#ffffff',
        color_flota_subitem_fondo = '#266dd3',
        btn_primario_fondo_ini = '#0088cc',
        btn_primario_fondo_fin = '#0044cc',
        btn_primario_fuente = '#ffffff',
        btn_peligro_fondo_ini = '#ee5f5b',
        btn_peligro_fondo_fin = '#bd362f',
        btn_peligro_fuente = '#ffffff',
        btn_accion_fondo_ini = '#ffffff',
        btn_accion_fondo_fin= '#e6e6e6',
        btn_accion_fuente = '#000000',
        alerta_exito_fondo = '#dff0d8',
        alerta_exito_fuente = '#468847',
        alerta_problema_fondo = '#f8d7da',
        alerta_problema_fuente = '#721c24'
      WHERE id=1;
    SQL
  end
end

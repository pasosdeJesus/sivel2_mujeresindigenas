class HcOik20242 < ActiveRecord::Migration[7.2]

  def up
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1229, 'BD', 'evento_hora'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1230, 'BK', 'evento_descripcion_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1231, 'BL', 'evento_que_paso'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1232, 'BM', 'evento_agresion'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1233, 'BP', 'evento_relacionesprvic_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1234, 'BQ', 'evento_presp_nombre'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1235, 'BR', 'evento_presp_sexo'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1236, 'BS', 'evento_presp_externo'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1237, 'BT', 'evento_presp_numid'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1238, 'BU', 'evento_presp_etnia'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1239, 'BV', 'evento_presp_ocupacion'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1240, 'BW', 'evento_presp_residencia'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1241, 'BX', 'evento_presp_comunidad'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1242, 'CF', 'evento_ruta_activada'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1243, 'CG', 'evento_otra_ruta'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1244, 'CH', 'evento_contexto_agresion'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1245, 'CI', 'evento_datos_adicionales'
    )
  end

  def down
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1245)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1244)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1243)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1242)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1241)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1240)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1239)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1238)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1237)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1236)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1235)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1234)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1233)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1232)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1231)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1230)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1229)
  end
end

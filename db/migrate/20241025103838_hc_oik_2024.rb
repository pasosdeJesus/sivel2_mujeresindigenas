class HcOik2024 < ActiveRecord::Migration[7.2]
  def up
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1208, 'K', 'otro_acompanamiento'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1209, 'O', 'victima_nombres_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1210, 'P', 'victima_apellidos_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1211, 'Q', 'victima_identificacion_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1212, 'R', 'victima_docid'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1213, 'S', 'victima_telefono'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1214, 'T', 'victima_contacto_de_confianza'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1215, 'U', 'victima_telefono_contacto'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1216, 'AE', 'victima_departamentores_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1217, 'AF', 'victima_municipiores_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1218, 'AG', 'victima_resguardores_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1219, 'AH', 'victima_comunidadres_priv_acin'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1220, 'AN', 'victima_eps'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1221, 'AP', 'victima_orientacion_sexual'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1222, 'AQ', 'victima_ocupacion'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1223, 'AU', 'victima_poblacion_especial'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1224, 'AV', 'victima_dependientes'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1225, 'AW', 'victima_dependientes_menores'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1226, 'AX', 'victima_dependientes_mayores'
    )
    Heb412Gen::PlantillaHelper.inserta_columna(
      3, 1227, 'AY', 'victima_dependientes_diversidad'
    )

  end

  def down
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1227)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1226)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1225)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1224)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1223)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1222)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1221)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1220)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1219)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1218)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1217)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1216)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1215)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1214)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1213)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1212)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1211)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1210)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1209)
    Heb412Gen::PlantillaHelper.elimina_columna(3, 1208)
  end
end

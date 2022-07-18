class EsquemaPlantillaAcin < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      DROP MATERIALIZED VIEW IF EXISTS sivel2_gen_consexpcaso CASCADE;
    SQL
    Heb412Gen::PlantillaHelper.inserta_columna(1, 901, 'AU', 'victima_anioesquema_priv_acin')
    Heb412Gen::PlantillaHelper.inserta_columna(1, 900, 'AU', 'victima_tieneesquema_priv_acin')
  end

  def down
    Heb412Gen::PlantillaHelper.elimina_columna(1, 900)
    Heb412Gen::PlantillaHelper.elimina_columna(1, 901)
    execute <<-SQL
      DROP MATERIALIZED VIEW IF EXISTS sivel2_gen_consexpcaso CASCADE;
    SQL
  end
end

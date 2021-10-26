class CreaAcompanamientoCasosjr < ActiveRecord::Migration[5.0]
  def up
    create_join_table :acompanamiento, :sivel2_sjr_casosjr, 
      table_name: :acompanamiento_casosjr
    add_foreign_key :acompanamiento_casosjr, :acompanamiento,
      column: :acompanamiento_id
    add_foreign_key :acompanamiento_casosjr, :sivel2_sjr_casosjr,
      column: :sivel2_sjr_casosjr_id, primary_key: :id_caso

    execute <<-SQL
      INSERT INTO acompanamiento_casosjr
      (acompanamiento_id, sivel2_sjr_casosjr_id)
      (SELECT CASE 
          WHEN tipoacomp='N' THEN 1
          WHEN tipoacomp='C' THEN 2
          WHEN tipoacomp='J' THEN 3
          WHEN tipoacomp='U' THEN 4
          WHEN tipoacomp='P' THEN 5
        END, id_caso FROM sivel2_sjr_casosjr
      WHERE tipoacomp IS NOT NULL);
    SQL

    remove_column :sivel2_sjr_casosjr, :tipoacomp
  end

  def down
    add_column :sivel2_sjr_casosjr, :tipoacomp, :string, limit: 1

    execute <<-SQL
    UPDATE sivel2_sjr_casosjr SET tipoacomp=
        CASE 
          WHEN acompanamiento_casosjr.acompanamiento_id = 1 THEN 'N'
          WHEN acompanamiento_casosjr.acompanamiento_id = 2 THEN 'C'
          WHEN acompanamiento_casosjr.acompanamiento_id = 3 THEN 'J'
          WHEN acompanamiento_casosjr.acompanamiento_id = 4 THEN 'U'
          WHEN acompanamiento_casosjr.acompanamiento_id = 5 THEN 'P'
        END
    FROM acompanamiento_casosjr
    WHERE 
      acompanamiento_casosjr.sivel2_sjr_casosjr_id=sivel2_sjr_casosjr.id_caso;
    SQL

    remove_foreign_key :acompanamiento_casosjr, column: :acompanamiento_id
    remove_foreign_key :acompanamiento_casosjr, column: :sivel2_sjr_casosjr_id

    drop_join_table :acompanamiento, :sivel2_sjr_casosjr, 
      table_name: :acompanamiento_casosjr
  end
end

class CambiaEstadocaso < ActiveRecord::Migration[5.0]
  def up
    create_join_table :estadocaso, :sivel2_sjr_casosjr, table_name: :casosjr_estadocaso

    execute <<-SQL
      INSERT INTO casosjr_estadocaso
      (sivel2_sjr_casosjr_id, estadocaso_id)
      (SELECT id_caso, CASE 
          WHEN estadocaso='A' THEN 1
          WHEN estadocaso='D' THEN 2
          WHEN estadocaso='R' THEN 3 
        END FROM sivel2_sjr_casosjr
      WHERE estadocaso IS NOT NULL);
    SQL

    remove_column :sivel2_sjr_casosjr, :estadocaso
  end

  def down
    add_column :sivel2_sjr_casosjr, :estadocaso, :string, limit: 1

    execute <<-SQL
    UPDATE sivel2_sjr_casosjr SET estadocaso=
        CASE WHEN casosjr_estadocaso.estadocaso_id = 1 THEN 'A'
          WHEN casosjr_estadocaso.estadocaso_id = 2 THEN 'D'
          WHEN casosjr_estadocaso.estadocaso_id = 3 THEN 'R'
        END
    FROM casosjr_estadocaso
    WHERE casosjr_estadocaso.sivel2_sjr_casosjr_id=sivel2_sjr_casosjr.id_caso;
    SQL

    drop_join_table :estadocaso, :sivel2_sjr_casosjr, table_name: :casosjr_estadocaso
  end
end

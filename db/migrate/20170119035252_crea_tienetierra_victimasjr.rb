# encoding: utf-8

class CreaTienetierraVictimasjr < ActiveRecord::Migration[5.0]
  def up
    create_join_table :tienetierra, :sivel2_sjr_victimasjr, 
      table_name: :tienetierra_victimasjr
    add_foreign_key :tienetierra_victimasjr, :tienetierra,
      column: :tienetierra_id
    add_foreign_key :tienetierra_victimasjr, :sivel2_sjr_victimasjr,
      column: :sivel2_sjr_victimasjr_id, primary_key: :id_victima

    execute <<-SQL
      INSERT INTO tienetierra_victimasjr
      (tienetierra_id, sivel2_sjr_victimasjr_id)
      (SELECT CASE 
          WHEN tienetierra='I' THEN 1
          WHEN tienetierra='S' THEN 2
          WHEN tienetierra='N' THEN 3
          WHEN tienetierra='A' THEN 4
          WHEN tienetierra='C' THEN 5
          WHEN tienetierra='O' THEN 6
        END, id_victima FROM sivel2_sjr_victimasjr
      WHERE tienetierra IS NOT NULL);
    SQL

    remove_column :sivel2_sjr_victimasjr, :tienetierra
  end

  def down
    add_column :sivel2_sjr_victimasjr, :tienetierra, :string, limit: 1

    execute <<-SQL
    UPDATE sivel2_sjr_victimasjr SET tienetierra=
        CASE 
          WHEN tienetierra_victimasjr.tienetierra_id = 1 THEN 'I'
          WHEN tienetierra_victimasjr.tienetierra_id = 2 THEN 'S'
          WHEN tienetierra_victimasjr.tienetierra_id = 3 THEN 'N'
          WHEN tienetierra_victimasjr.tienetierra_id = 4 THEN 'A'
          WHEN tienetierra_victimasjr.tienetierra_id = 5 THEN 'C'
          WHEN tienetierra_victimasjr.tienetierra_id = 6 THEN 'O'
        END
    FROM tienetierra_victimasjr
    WHERE 
      tienetierra_victimasjr.sivel2_sjr_victimasjr_id=sivel2_sjr_victimasjr.id_victima;
    SQL

    remove_foreign_key :tienetierra_victimasjr, column: :tienetierra_id
    remove_foreign_key :tienetierra_victimasjr, column: :sivel2_sjr_victimasjr_id

    drop_join_table :tienetierra, :sivel2_sjr_victimasjr, 
      table_name: :tienetierra_victimasjr
  end
end

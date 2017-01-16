# enconding: utf-8
class CambiaIdiomaVmultiple < ActiveRecord::Migration[5.0]
  def up
    create_join_table :sivel2_sjr_idioma, :sivel2_sjr_victimasjr, 
      table_name: :idioma_victimasjr
    add_foreign_key :idioma_victimasjr, :sivel2_sjr_idioma,
      column: :sivel2_sjr_idioma_id
    add_foreign_key :idioma_victimasjr, :sivel2_sjr_victimasjr,
      column: :sivel2_sjr_victimasjr_id, primary_key: :id_victima

    execute <<-SQL
      INSERT INTO idioma_victimasjr
      (sivel2_sjr_idioma_id, sivel2_sjr_victimasjr_id)
      (SELECT id_idioma, contacto FROM sivel2_sjr_casosjr);
    SQL

    remove_column :sivel2_sjr_casosjr, :id_idioma
  end

  def down
    add_column :sivel2_sjr_casosjr, :id_idioma, :integer
    add_foreign_key :sivel2_sjr_casosjr, :sivel2_sjr_idioma,
      column: :id_idioma

    execute <<-SQL
    UPDATE sivel2_sjr_casosjr SET id_idioma=idioma_victimasjr.sivel2_sjr_idioma_id
    FROM idioma_victimasjr
    WHERE 
      idioma_victimasjr.sivel2_sjr_victimasjr_id=sivel2_sjr_casosjr.contacto;
    SQL

    remove_foreign_key :idioma_victimasjr, column: :sivel2_sjr_idioma_id
    remove_foreign_key :idioma_victimasjr, column: :sivel2_sjr_victimasjr_id

    drop_join_table :sivel2_sjr_idioma, :sivel2_sjr_victimasjr, 
      table_name: :idioma_victimasjr
  end
end

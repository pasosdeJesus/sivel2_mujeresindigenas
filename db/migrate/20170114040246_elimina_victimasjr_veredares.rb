class EliminaVictimasjrVeredares < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
    UPDATE sivel2_sjr_victimasjr SET comunidadres = comunidadres || ' | ' ||
      veredares WHERE veredares IS NOT NULL AND TRIM(veredares) <> '';
    SQL

    remove_column :sivel2_sjr_victimasjr, :veredares
  end

  def down
    add_column :sivel2_sjr_victimasjr, :veredares, :string, limit: 500

    execute <<-SQL
    UPDATE sivel2_sjr_victimasjr SET 
      veredares = SUBSTRING(comunidadres FROM 
        (POSITION(' | ' IN comunidadres) + 3)),
      comunidadres = SUBSTRING(comunidadres FOR 
        (POSITION(' | ' IN comunidadres) - 1))
      WHERE POSITION(' | ' in comunidadres) > 0;
    SQL
  end
end

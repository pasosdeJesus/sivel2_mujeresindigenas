class CambiaEventoAfectacionotra < ActiveRecord::Migration[5.0]
  def up
    change_column :evento, :afectacionotra, :string, limit: 500
    execute <<-SQL
    UPDATE evento SET afectacionotra=(CASE 
      WHEN afectacionotra='I' THEN 'SIN INFORMACIÓN'
      WHEN afectacionotra='S' THEN 'SI'
      WHEN afectacionotra='N' THEN 'NO'
    END)
    SQL
  end
  def down
    execute <<-SQL
    UPDATE evento SET afectacionotra=(CASE 
      WHEN afectacionotra='SI' THEN 'S'
      WHEN afectacionotra='NO' THEN 'N'
      ELSE 'I'
    END)
    SQL
    change_column :evento, :afectacionotra, :string, limit: 1
  end
end

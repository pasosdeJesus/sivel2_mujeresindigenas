class CreaEventoMotivonodenuncia < ActiveRecord::Migration[5.0]
  def up
    create_join_table :evento, :motivonodenuncia, 
      table_name: :evento_motivonodenuncia
    add_foreign_key :evento_motivonodenuncia, :motivonodenuncia,
      column: :motivonodenuncia_id
    add_foreign_key :evento_motivonodenuncia, :evento,
      column: :evento_id, primary_key: :id

    execute <<-SQL
      INSERT INTO evento_motivonodenuncia
      (evento_id, motivonodenuncia_id)
      (SELECT id, motivonodenuncia_id FROM evento);
    SQL

    if false
    remove_column :evento, :motivonodenuncia_id
    end
  end

  def down
    if false
    add_column :evento, :motivonodenuncia_id, :integer
    add_foreign_key :evento, :motivonodenuncia,
      column: :motivonodenuncia_id
    end

    execute <<-SQL
      UPDATE evento SET 
        motivonodenuncia_id=evento_motivonodenuncia.motivonodenuncia_id
      FROM evento_motivonodenuncia
      WHERE evento_motivonodenuncia.evento_id=evento.id;
    SQL

    remove_foreign_key :evento_motivonodenuncia, column: :motivonodenuncia_id
    remove_foreign_key :evento_motivonodenuncia, column: :evento_id

    drop_join_table :evento, :motivonodenuncia, 
      table_name: :evento_motivonodenuncia
  end
end

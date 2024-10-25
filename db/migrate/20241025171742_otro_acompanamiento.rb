class OtroAcompanamiento < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      INSERT INTO acompanamiento
       (id, nombre, fechacreacion, created_at, updated_at) 
       VALUES (7, 'OTRO', '2024-10-24', '2024-10-24', '2024-10-24');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM acompanamiento WHERE id=7;
    SQL
  end
end

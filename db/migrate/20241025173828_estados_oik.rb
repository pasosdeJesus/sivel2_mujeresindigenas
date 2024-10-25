class EstadosOik < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      INSERT INTO estadocaso
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (5, 'IDENTIFICACIÓN Y ATENCIÓN (OIK)',
         '2024-10-24', '2024-10-24', '2024-10-24');
      INSERT INTO estadocaso
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (6, 'REGISTRO Y/O DOCUMENTACIÓN (OIK)',
         '2024-10-24', '2024-10-24', '2024-10-24');
      INSERT INTO estadocaso
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (7, 'PREVENCIÓN Y/O PROMOCIÓN (OIK)',
         '2024-10-24', '2024-10-24', '2024-10-24');
      INSERT INTO estadocaso
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (8, 'REMISIÓN Y/O SEGUIMIENTO (OIK)',
         '2024-10-24', '2024-10-24', '2024-10-24');
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM estadocaso WHERE id>=5 AND id<=8;
    SQL
  end
end

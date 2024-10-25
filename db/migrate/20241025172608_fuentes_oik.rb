class FuentesOik < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      INSERT INTO msip_fuenteprensa (id, nombre, 
        fechacreacion, created_at, updated_at) 
        VALUES ('55', 'CMIFAK - COMITES COMUNITARIOS (OIK)', 
        '2024-10-24', '2024-10-24', '2024-10-24');
      INSERT INTO msip_fuenteprensa (id, nombre,
        fechacreacion, created_at, updated_at) 
        VALUES ('56', 'OTRAS INSTANCIAS DEL RESGURDO (OIK)', 
        '2024-10-24', '2024-10-24', '2024-10-24');
      INSERT INTO msip_fuenteprensa (id, nombre,
        fechacreacion, created_at, updated_at) 
        VALUES ('57', 'ENTIDADES - ORGANIZACIONES EXTERNAS (OIK)', 
        '2024-10-24', '2024-10-24', '2024-10-24');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM msip_fuenteprensa WHERE id>=55 AND id<=57;
    SQL
  end
end

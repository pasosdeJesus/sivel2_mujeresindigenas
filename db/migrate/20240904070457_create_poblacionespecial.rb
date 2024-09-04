class CreatePoblacionespecial < ActiveRecord::Migration[7.2]
  include Msip::SqlHelper
  def up
    create_table :poblacionespecial do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps
    end
    cambiaCotejacion('poblacionespecial', 'nombre', 500, 'es_co_utf_8')
    execute <<-SQL
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (1, 'SIN INFORMACIÓN', '2024-09-04', '2024-09-03', '2024-09-04');
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (2, 'MUJER LIDER', '2024-09-04', '2024-09-03', '2024-09-04');
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (3, 'CON DISCAPACIDAD', '2024-09-04', '2024-09-03', '2024-09-04');
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (4, 'VÍCTIMA DEL CONFLICTO', '2024-09-04', '2024-09-03', '2024-09-04');
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (5, 'MIGRANTE', '2024-09-04', '2024-09-03', '2024-09-04');
      INSERT INTO poblacionespecial 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (6, 'OTROS', '2024-09-04', '2024-09-03', '2024-09-04');
      SELECT setval('poblacionespecial_id_seq', 100);
    SQL
  end
  def down
    drop_table :poblacionespecial
  end
end

class CreateTafectacion < ActiveRecord::Migration
  def up
    create_table :tafectacion do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps null: false
    end
    execute <<-EOF
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'FÍSICA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'CULTURAL', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'ECONÓMICA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'PSICOSOCIAL', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'COMUNITARIA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'FAMILIARES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tafectacion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (8, 'INDIVIDUAL', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    EOF
  end
  def down
    drop_table :tafectacion
  end
end


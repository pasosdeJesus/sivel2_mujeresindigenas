class CreateMotivonodenuncia < ActiveRecord::Migration
  def up
    create_table :motivonodenuncia do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamps null: false
    end
    execute <<-SQL
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'MIEDO A POSIBLES RETALIACIONES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'NO CONSIDERA QUE LOS HECHOS SON VIOLACIÓN A SUS DERECHOS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'VERGÜENZA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'PREVENIR HABLADURÍA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'DESCONOCIMIENTO DE DONDE DENUNCIAR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'FALTA DE CREDIBILIDAD EN AUTORIDADES INDÍGENAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO motivonodenuncia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (8, 'FALTA DE CREDIBILIDAD EN ENTIDADES ESTATALS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end
  def down
    drop_table :motivonodenuncia
  end
end

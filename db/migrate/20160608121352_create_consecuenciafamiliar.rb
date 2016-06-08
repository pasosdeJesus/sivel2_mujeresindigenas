class CreateConsecuenciafamiliar < ActiveRecord::Migration
  def change
    create_table :consecuenciafamiliar do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps null: false
    end
    execute <<-SQL
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'PERDIDA DE CREDIBILIDAD DE USOS Y COSTUMBRES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'DESINTEGRACION FAMILIAR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'DESINTEGRACION COLECTIVA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'DIFICULTADES CON LA FAMILIA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'DIFICULTADES CON LA PAREJA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafamiliar (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'DIFICULTADES CON AMIGOS/AS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end
  def down
    drop_table :consecuenciafamiliar
  end
end

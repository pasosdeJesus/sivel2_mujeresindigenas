class CreateConsecuenciafisica < ActiveRecord::Migration
  def change
    create_table :consecuenciafisica do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamps null: false
    end

    execute <<-SQL
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);

    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'CABEZA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'CABELLO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'FRENTE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'OJO DERECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'OJO IZQUIERDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'CEJA DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (8, 'CEJA IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (9, 'NARIZ', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (10, 'BOCA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (11, 'DIENTES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (12, 'LABIO SUPERIOR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (13, 'LABIO INFERIOR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (14, 'PÓMULOS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (15, 'MEJILLAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (16, 'MENTÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (17, 'CUELLO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (18, 'OREJA DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (19, 'OREJA IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (20, 'PECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (21, 'TÓRAX', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (22, 'BRAZO DERECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (23, 'BRAZO IZQUIERDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (24, 'MANO DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (25, 'MANO IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (26, 'ESPALDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (27, 'SENO DERECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (28, 'SENO IZQUIERDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (29, 'ABDOMEN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (30, 'MATRIZ', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (31, 'VAGINA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (32, 'VIENTRE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (33, 'INGLE', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (34, 'PIERNA DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (35, 'PIERNA IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (36, 'RODILLA DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (37, 'RODILLA IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (38, 'PIE DERECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (39, 'PIE IZQUIERDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (40, 'DEDOS DE LA MANO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (41, 'HOMBRO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (42, 'DERECHO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (43, 'HOMBRO IZQUIERDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (44, 'NALGA DERECHA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (45, 'NALGA IZQUIERDA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (46, 'FRACTURAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (47, 'MORETONES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (48, 'SUTURAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciafisica (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (49, 'FUNCIONALIDAD', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end
  def down
    drop_table :consecuenciafisica
  end
end

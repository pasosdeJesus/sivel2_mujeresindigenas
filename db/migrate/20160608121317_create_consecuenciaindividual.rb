class CreateConsecuenciaindividual < ActiveRecord::Migration
  def up
    create_table :consecuenciaindividual do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamps null: false
    end
    execute <<-SQL
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'DIFICULTADES EN EL TRABAJO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'TEMOR A HABLAR EN PÚBLICO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'DESEQUILIBRIO DE LOS PULSOS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'INSEGUIRID PARA MOVERSE EN EL TERRITORIO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'SENTIMIENTO DE CULPA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (7, 'PERDIDA DEL APETITO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (8, 'DESEQUILIBRIO DEL SUEÑO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (9, 'DESEOS DE MORIR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (10, 'SENTIMIENTO DE SOLEDAD', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (11, 'LLANTO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (12, 'MIEDO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (13, 'SENTIMIENTO DE VENGANZA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (14, 'SENTIMIENTO DE ODIO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (15, 'TRISTEZA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (16, 'AGRESIVIDAD', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO consecuenciaindividual (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (17, 'PESADILLAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end
  def down
    drop_table :consecuenciaindividual
  end
end

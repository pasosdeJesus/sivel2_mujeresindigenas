class CreateTapoyo < ActiveRecord::Migration
  def up
    create_table :tapoyo do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamps null: false
    end
    execute <<-SQL
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'FAMILIAR', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'COMUNITARIO', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'ORGANIZACIÓN INDÍGENA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'INSTITUCIÓN ESTATAL', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO tapoyo (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (6, 'ONG', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end

  def down
    drop_table :tapoyo
  end

end

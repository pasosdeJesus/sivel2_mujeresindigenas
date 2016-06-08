class CreateEducacionpropia < ActiveRecord::Migration
  def up
    create_table :educacionpropia do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    execute <<-SQL
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'OTRA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'ESCUELA DE JÓVENES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'ESCUELA DE MUJERES', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'ESCUELA DE GUARDIAS', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO educacionpropia (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (5, 'ESCUELA DE SALUD', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    SQL
  end
  def down
    drop_table :educacionpropia
  end
end

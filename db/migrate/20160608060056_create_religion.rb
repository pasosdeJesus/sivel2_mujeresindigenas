class CreateReligion < ActiveRecord::Migration
  def up
    create_table :religion do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    execute <<-EOF
    INSERT INTO religion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (0, 'SIN INFORMACIÓN', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO religion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (1, 'EVANGÉLICA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO religion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (2, 'CATÓLICA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO religion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (3, 'ISRAELITA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    INSERT INTO religion (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (4, 'PROPIA', '2016-06-07', NULL, '2016-06-07', '2016-06-07', NULL);
    EOF
  end
  def down
    drop_table :religion
  end
end

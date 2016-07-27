class CreateEstadocaso < ActiveRecord::Migration[5.0]
  def up
    create_table :estadocaso do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
    execute <<-SQL
      INSERT INTO estadocaso 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (1, 'ACOMPAÑADO', '2016-07-27', '2016-07-27', '2016-07-27');
      INSERT INTO estadocaso 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (2, 'DOCUMENTADO', '2016-07-27', '2016-07-27', '2016-07-27');
      INSERT INTO estadocaso 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (3, 'REGISTRADO', '2016-07-27', '2016-07-27', '2016-07-27');
    SQL
  end
  def down
    drop_table :estadocaso
  end
end

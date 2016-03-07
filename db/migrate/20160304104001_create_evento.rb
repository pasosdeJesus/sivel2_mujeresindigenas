class CreateEvento < ActiveRecord::Migration
  def change
    create_table :evento do |t|
      t.integer :caso_id
      t.date :fecha
      t.boolean :mesinexacto
      t.boolean :diainexacto
      t.integer :diasemana
      t.time :hora
      t.integer :ubicacion_id
    end
  end
end

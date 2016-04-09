class CreateActoevento < ActiveRecord::Migration
  def change
    create_table :actoevento do |t|
      t.integer :evento_id, null: false
      t.integer :presponsable_id, null: false
      t.integer :categoria_id, null: false
    end
    add_foreign_key :actoevento, :evento, column: :evento_id
    add_foreign_key :actoevento, :sivel2_gen_presponsable, 
      column: :presponsable_id
    add_foreign_key :actoevento, :sivel2_gen_categoria, column: :categoria_id
  end
end

class CreateJoinTableCategoriaEventopresponsable < ActiveRecord::Migration[5.0]
  def change

    create_table :categoria_eventopresponsable, id: false do |t|
      t.integer :categoria_id, null: false
      t.integer :eventopresponsable_id, null: false
    end
    add_foreign_key :categoria_eventopresponsable, :sivel2_gen_categoria, 
      column: :categoria_id
    add_foreign_key :categoria_eventopresponsable, :eventopresponsable, 
      column: :eventopresponsable_id
  end
end

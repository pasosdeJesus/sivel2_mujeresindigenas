class CreaEventopresponsable < ActiveRecord::Migration[5.0]
  def change
    create_table :eventopresponsable do |t|
      t.integer :evento_id, null: false
      t.integer :presponsable_id, null: false
    end
    add_foreign_key :eventopresponsable, :evento, column: :evento_id
    add_foreign_key :eventopresponsable, :sivel2_gen_presponsable, 
      column: :presponsable_id
  end
end

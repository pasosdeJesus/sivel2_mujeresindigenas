class CreateJoinTableEventoRelacionprvic < ActiveRecord::Migration[5.0]
  def change
    create_table :evento_relacionprvic, id: false do |t|
      t.integer :evento_id, null: false
      t.integer :relacionprvic_id, null: false
    end
    add_foreign_key :evento_relacionprvic, :evento,
      column: :evento_id
    add_foreign_key :evento_relacionprvic, :relacionprvic,
      column: :relacionprvic_id
  end
end

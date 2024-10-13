class CompEventoOik < ActiveRecord::Migration[7.2]
  def change
    add_column :evento, :rutaactivable_id, :integer
    add_foreign_key :evento, :rutaactivable
    add_column :evento, :otrarutaactivable, :string, limit: 127
    add_column :evento, :contextoagresion, :string, limit: 5000
    add_column :evento, :datosadicionales, :string, limit: 5000
  end
end

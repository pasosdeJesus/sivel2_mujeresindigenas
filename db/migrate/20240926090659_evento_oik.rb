class EventoOik < ActiveRecord::Migration[7.2]
  def change
    add_column :evento, :quepaso, :string, limit: 5000
    add_column :evento, :agresion, :string, limit: 5000
  end
end

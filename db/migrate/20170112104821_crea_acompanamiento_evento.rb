class CreaAcompanamientoEvento < ActiveRecord::Migration[5.0]
  def up
    create_join_table :acompanamiento, :evento, 
      table_name: :acompanamiento_evento
    add_foreign_key :acompanamiento_evento, :acompanamiento,
      column: :acompanamiento_id
    add_foreign_key :acompanamiento_evento, :evento,
      column: :evento_id, primary_key: :id
  end

  def down
    remove_foreign_key :acompanamiento_evento, column: :acompanamiento_id
    remove_foreign_key :acompanamiento_evento, column: :evento_id

    drop_join_table :acompanamiento, :evento, 
      table_name: :acompanamiento_evento
  end
end

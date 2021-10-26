class CreaAcompanamientorecEvento < ActiveRecord::Migration[5.0]
  def change
    create_join_table :acompanamiento, :evento, 
      table_name: :acompanamientorec_evento
    add_foreign_key :acompanamientorec_evento, :acompanamiento,
      column: :acompanamiento_id
    add_foreign_key :acompanamientorec_evento, :evento,
      column: :evento_id, primary_key: :id
  end
end

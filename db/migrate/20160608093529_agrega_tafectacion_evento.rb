class AgregaTafectacionEvento < ActiveRecord::Migration
  def change
    add_column :evento, :tafectacion_id, :integer, default: 0
    add_foreign_key :evento, :tafectacion, column: :tafectacion_id
  end
end

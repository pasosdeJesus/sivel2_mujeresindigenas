class AgregaTapoyoEvento < ActiveRecord::Migration
  def change
    add_column :evento, :tapoyo_id, :integer, default: 0
    add_foreign_key :evento, :tapoyo, column: :tapoyo_id
  end
end

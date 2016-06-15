class AgregaConsecuenciafamiliarEvento < ActiveRecord::Migration
  def change
    add_column :evento, :consecuenciafamiliar_id, :integer, default: 0
    add_foreign_key :evento, :consecuenciafamiliar, column: :consecuenciafamiliar_id
  end
end

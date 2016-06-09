class AgregaConsecuenciafisicaEvento < ActiveRecord::Migration
  def change
    add_column :evento, :consecuenciafisica_id, :integer, default: 0
    add_foreign_key :evento, :consecuenciafisica, column: :consecuenciafisica_id
  end
end

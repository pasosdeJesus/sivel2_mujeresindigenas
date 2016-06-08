class AgregaConsecuenciaindividualEvento < ActiveRecord::Migration
  def change
    add_column :evento, :consecuenciaindividual_id, :integer, default: 0
    add_foreign_key :evento, :consecuenciaindividual, column: :consecuenciaindividual_id
  end
end

class ActoEvento < ActiveRecord::Migration
  def change
    add_column :sivel2_gen_acto, :evento_id, :integer
    add_foreign_key :sivel2_gen_acto, :evento, column: :evento_id
  end
end

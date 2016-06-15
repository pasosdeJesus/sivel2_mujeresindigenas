class AgregaMotivonodenunciaEvento < ActiveRecord::Migration
  def change
    add_column :evento, :motivonodenuncia_id, :integer, default: 0
    add_foreign_key :evento, :motivonodenuncia, column: :motivonodenuncia_id
  end
end

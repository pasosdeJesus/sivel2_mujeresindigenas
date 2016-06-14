class AgregaRelacionadoconEvento < ActiveRecord::Migration
  def change
    add_column :evento, :relacionadocon, :string, limit: 1
  end
end

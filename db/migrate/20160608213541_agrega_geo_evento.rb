class AgregaGeoEvento < ActiveRecord::Migration
  def change
    add_column :evento, :departamento_id, :integer, default: nil
    add_foreign_key :evento, :sip_departamento, column: :departamento_id
    add_column :evento, :municipio_id, :integer, default: nil
    add_foreign_key :evento, :sip_municipio, column: :municipio_id
  end
end

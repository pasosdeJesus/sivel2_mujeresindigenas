class AgregaResidenciaVictimasjr < ActiveRecord::Migration
  def up
    add_column :sivel2_sjr_victimasjr, :departamentores_id, :integer
    add_column :sivel2_sjr_victimasjr, :municipiores_id, :integer
    add_column :sivel2_sjr_victimasjr, :resguardores, :string, limit: 500
    add_column :sivel2_sjr_victimasjr, :comunidadres, :string, limit: 500

    add_foreign_key :sivel2_sjr_victimasjr, :sip_departamento, column: :departamentores_id
    add_foreign_key :sivel2_sjr_victimasjr, :sip_municipio, column: :municipiores_id
  end
end

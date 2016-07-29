class MasCamposAcion < ActiveRecord::Migration[5.0]
  def change
    add_column :sivel2_sjr_victimasjr, :comoingresos, :string, limit: 5000
    add_column :sivel2_sjr_victimasjr, :veredares, :string, limit: 500
    add_column :sivel2_sjr_victimasjr, :tipoliderazgo, :string, limit: 5000
  end
end

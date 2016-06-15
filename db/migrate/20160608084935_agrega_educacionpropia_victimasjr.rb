class AgregaEducacionpropiaVictimasjr < ActiveRecord::Migration
  def change
    add_column :sivel2_sjr_victimasjr, :educacionpropia_id, :integer, default: 0
    add_foreign_key :sivel2_sjr_victimasjr, :educacionpropia, column: :educacionpropia_id
  end
end

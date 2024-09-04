class PoblacionespecialEnVictimasjr < ActiveRecord::Migration[7.2]
  def change
    add_column :sivel2_sjr_victimasjr, :poblacionespecial_id, :integer
    add_foreign_key :sivel2_sjr_victimasjr, :poblacionespecial
  end
end

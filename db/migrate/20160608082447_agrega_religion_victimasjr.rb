class AgregaReligionVictimasjr < ActiveRecord::Migration
  def change
    add_column :sivel2_sjr_victimasjr, :religion_id, :integer, default: 0
    add_foreign_key :sivel2_sjr_victimasjr, :religion, column: :religion_id
  end
end

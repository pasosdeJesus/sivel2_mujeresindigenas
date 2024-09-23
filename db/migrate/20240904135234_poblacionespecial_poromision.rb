class PoblacionespecialPoromision < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      UPDATE sivel2_sjr_victimasjr SET poblacionespecial_id=1 
        WHERE poblacionespecial_id IS NULL;
    SQL
    change_column :sivel2_sjr_victimasjr, 
      :poblacionespecial_id, 
      :integer, 
      default: 1,
      null: false
  end
  def down
    change_column :sivel2_sjr_victimasjr, 
      :poblacionespecial_id, 
      :integer, 
      default: nil,
      null: false
  end

end

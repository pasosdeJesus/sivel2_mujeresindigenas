class Dependientes < ActiveRecord::Migration[7.2]
  def change
    add_column :sivel2_sjr_victimasjr, :dependientes, :integer
    add_column :sivel2_sjr_victimasjr, :dependientesmenores, :integer
    add_column :sivel2_sjr_victimasjr, :dependientesmayores, :integer
    add_column :sivel2_sjr_victimasjr, :dependientesdiversidad, :integer
  end
end

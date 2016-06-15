class AjustaC2 < ActiveRecord::Migration
  def change
    change_column_default(:sivel2_sjr_casosjr, :tipoacomp, :N)
  end
end

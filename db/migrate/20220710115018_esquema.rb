class Esquema < ActiveRecord::Migration[7.0]
  def change
    add_column :sivel2_sjr_victimasjr, :tieneesquema, :string, limit: 1, default: :I
    add_column :sivel2_sjr_victimasjr, :anioesquema, :integer
  end
end

class OikBasicosVictima < ActiveRecord::Migration[7.2]
  def change
    add_column :sivel2_sjr_casosjr, :otroacompanamiento, :string, limit: 5000
    add_column :sivel2_sjr_victimasjr, :contacto, :string, limit: 255
    add_column :sivel2_sjr_victimasjr, :contactodeconfianza, :string, limit: 255
    add_column :sivel2_sjr_victimasjr, :ocupacion, :string, limit: 255
  end
end

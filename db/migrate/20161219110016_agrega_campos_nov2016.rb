class AgregaCamposNov2016 < ActiveRecord::Migration[5.0]
  def change
    add_column :sivel2_sjr_casosjr, :docterrenopor, :string, limit: 512
    add_column :sivel2_sjr_casosjr, :consecorg, :string, limit: 16
    add_column :evento, :telcontacto, :string, limit: 128
    add_column :evento, :quereparacion, :string, limit: 5120
    add_column :evento, :fechaseguimiento, :date
    add_column :evento, :sancionadovictimario, :string, limit: 1
  end
end

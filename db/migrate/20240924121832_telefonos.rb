class Telefonos < ActiveRecord::Migration[7.2]
  def change
    rename_column :sivel2_sjr_victimasjr, :contacto, :telefono

    add_column :sivel2_sjr_victimasjr, 
      :telefonocontactodeconfianza, 
      :string, 
      limit: 64
  end
end

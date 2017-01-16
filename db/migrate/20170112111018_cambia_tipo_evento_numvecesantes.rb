class CambiaTipoEventoNumvecesantes < ActiveRecord::Migration[5.0]
  def up
    change_column :evento, :numvecesantes,  :string
  end
  def down
    change_column :evento, :numvecesantes,  :integer
  end
end

class Nn < ActiveRecord::Migration[5.1]
  def up
    change_column_default :sip_persona, :nombres, 'N'
    change_column_default :sip_persona, :apellidos, 'N'
  end
  def down
  end
end

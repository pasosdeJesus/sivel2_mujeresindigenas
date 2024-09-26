class EventoRespind < ActiveRecord::Migration[7.2]
  def change
    add_column :evento, :prespcomunidad, :string, limit: 255
    add_column :evento, :prespetnia_id, :integer
    add_column :evento, :prespexterno, :boolean
    add_column :evento, :prespnombre, :string, limit: 255
    add_column :evento, :prespocupacion, :string, limit: 255
    add_column :evento, :prespnumid, :string, limit: 64
    add_column :evento, :prespresidencia, :string, limit: 255
    add_column :evento, :prespsexo, :string, limit: 1
  end
end

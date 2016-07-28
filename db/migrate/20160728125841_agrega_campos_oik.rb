class AgregaCamposOik < ActiveRecord::Migration[5.0]
  def change
    add_column :evento, :seguimientojudicial, :string, limit: 5000
    add_column :evento, :seguimientopsicosocial, :string, limit: 5000
  end
end

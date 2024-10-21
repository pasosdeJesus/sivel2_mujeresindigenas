class Evpredet < ActiveRecord::Migration[7.2]
  def up
    change_column_default :evento, :prespnombre, from: nil, to: ""
    change_column_default :evento, :prespsexo, from: nil, to: "S"
    change_column_default :evento, :prespnumid, from: nil, to: ""
    change_column_default :evento, :prespocupacion, from: nil, to: ""
    change_column_default :evento, :prespresidencia, from: nil, to: ""
    change_column_default :evento, :prespcomunidad, from: nil, to: ""
    change_column_default :evento, :otrarutaactivable, from: nil, to: ""
  end
end

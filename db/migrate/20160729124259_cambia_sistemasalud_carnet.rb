class CambiaSistemasaludCarnet < ActiveRecord::Migration[5.0]
  def up
    # Cambia de (O)RDINARIO, (P)ROPIO y S(I)NINFO a
    # (S)I, (N)O, S(I)INFO
    execute <<-SQL
    UPDATE sivel2_sjr_victimasjr SET sistemasalud = 'S' WHERE sistemasalud = 'P';
    UPDATE sivel2_sjr_victimasjr SET sistemasalud = 'S' WHERE sistemasalud = 'O';
    SQL
  end

  def down
    execute <<-SQL
    UPDATE sivel2_sjr_victimasjr SET sistemasalud = 'P' WHERE sistemasalud = 'S';
    UPDATE sivel2_sjr_victimasjr SET sistemasalud = 'I' WHERE sistemasalud = 'N';
    SQL
  end
end

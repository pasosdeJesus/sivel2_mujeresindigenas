class ModificaMedidasestado < ActiveRecord::Migration[5.0]
  def up
    # Cambia de SI, NO, SININFO a
    # CABILDO, ESTADO, CABILDOYESTADO, NINGUNA, SININFO
    execute <<-SQL
    UPDATE evento SET solicitomedidas = 'I' WHERE solicitomedidas='N';
    UPDATE evento SET solicitomedidas = 'E' WHERE solicitomedidas='S';
    SQL
  end

  def down
    execute <<-SQL
    UPDATE evento SET solicitomedidas = 'S' WHERE solicitomedidas='E';
    UPDATE evento SET solicitomedidas = 'S' WHERE solicitomedidas='Y';
    UPDATE evento SET solicitomedidas = 'N' WHERE solicitomedidas='C';
    UPDATE evento SET solicitomedidas = 'N' WHERE solicitomedidas='N';
    SQL
  end
end

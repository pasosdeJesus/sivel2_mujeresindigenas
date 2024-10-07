class DeshabilitaPsei < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      UPDATE sivel2_gen_presponsable SET fechadeshabilitacion=NOW() WHERE id IN (41,42);
    SQL
  end
  def down
    execute <<-SQL
      UPDATE sivel2_gen_presponsable SET fechadeshabilitacion=NULL WHERE id IN (41,42);
    SQL
  end
end

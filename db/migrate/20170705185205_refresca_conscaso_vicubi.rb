class RefrescaConscasoVicubi < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      DROP VIEW sivel2_gen_conscaso1 CASCADE;
    SQL
  end
  def down
  end
end

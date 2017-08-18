class RegeneraConscasoFechahecho < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
      DROP VIEW sivel2_gen_conscaso1 CASCADE;
    SQL
  end
  def down
  end
end

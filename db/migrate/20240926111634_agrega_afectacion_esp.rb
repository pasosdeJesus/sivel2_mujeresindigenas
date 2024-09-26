class AgregaAfectacionEsp < ActiveRecord::Migration[7.2]
  def up
    execute <<-SQL
      INSERT INTO public.tafectacion (id, nombre, fechacreacion, created_at, updated_at)
      VALUES (9, 'ESPIRITUAL', '2024-09-26', '2024-09-26', '2024-09-26');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM public.tafectacion WHERE id=9;
    SQL
  end
end

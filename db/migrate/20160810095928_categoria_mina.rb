class CategoriaMina < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
    UPDATE sivel2_gen_categoria SET nombre='HERIDO POR MINA ANTIPERSONAL' 
      WHERE id='4504';
    INSERT INTO sivel2_gen_categoria (id, nombre, fechacreacion, 
      fechadeshabilitacion, id_pconsolidado, contadaen, tipocat, created_at, 
      updated_at, observaciones, supracategoria_id) 
      VALUES (4506, 'MUERTO POR MINA ANTIPERSONAL', '2016-06-07', NULL, 
      NULL, NULL, 'I', NULL, NULL, NULL, 400);
    SQL
  end
  def down
    execute <<-SQL
    DELETE FROM sivel2_gen_categoria WHERE id='4506';
    UPDATE sivel2_gen_categoria SET nombre='CAMPO MINADO' 
      WHERE id='4504';
    SQL
  end
end

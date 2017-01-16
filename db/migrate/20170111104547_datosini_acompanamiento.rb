class DatosiniAcompanamiento < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
    INSERT INTO acompanamiento
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (1, 'NINGUNO', '2017-01-11', '2017-01-11', '2017-01-11');
    INSERT INTO acompanamiento
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (2, 'CULTURAL', '2017-01-11', '2017-01-11', '2017-01-11');
    INSERT INTO acompanamiento
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (3, 'JURÍDICO', '2017-01-11', '2017-01-11', '2017-01-11');
    INSERT INTO acompanamiento
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (4, 'JUSTICIA PROPIA', '2017-01-11', '2017-01-11', '2017-01-11');
    INSERT INTO acompanamiento
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (5, 'PSICOSOCIAL', '2017-01-11', '2017-01-11', '2017-01-11');
    SQL
  end
  def down
    execute <<-SQL
    DELETE FROM acompanamiento WHERE id>='1' AND id<='5';
    SQL
  end
end

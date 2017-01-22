# encoding: utf-8

class DatosiniTienetierra < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (1, 'SIN INFORMACIÓN', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (2, 'SI', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (3, 'NO', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (4, 'ADJUDICADO', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (5, 'COMPRÓ', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (6, 'OTRA', '2017-01-18', '2017-01-18', '2017-01-18');
    INSERT INTO tienetierra
      (id, nombre, fechacreacion, created_at, updated_at) 
      VALUES (7, 'HERENCIA', '2017-01-18', '2017-01-18', '2017-01-18');
    SQL
  end
  def down
    execute <<-SQL
    DELETE FROM tienetierra WHERE id>='1' AND id<='7';
    SQL
  end
end

class DatosiniRelacionprvic < ActiveRecord::Migration[5.0]
  def change
    execute <<-SQL
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (1, 'NINGUNA', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (2, 'ESPOSO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (3, 'PADRE', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (4, 'PADRASTRO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (5, 'NOVIO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (6, 'PRIMO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (7, 'ABUELO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (8, 'TÍO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (9, 'HERMANO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (10, 'VECINO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (11, 'AMIGO', '2016-08-23', '2016-08-23', '2016-08-23');
    INSERT INTO relacionprvic 
    (id, nombre, fechacreacion, created_at, updated_at) 
    VALUES (12, 'AMIGO DE LA FAMILIA', '2016-08-23', '2016-08-23', '2016-08-23');
    SQL
  end
end

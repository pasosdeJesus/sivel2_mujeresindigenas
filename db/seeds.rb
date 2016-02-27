# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

conexion = ActiveRecord::Base.connection();

# De motores y al final este
motor = ['sip', 'sivel2_gen', 'sivel2_sjr', 'cor1440_gen', nil]
motor.each do |m|
    Sip::carga_semillas_sql(conexion, m, :cambios)
    Sip::carga_semillas_sql(conexion, m, :datos)
end

# Usuario inicial: mind con clave sjrecu123
conexion.execute("INSERT INTO usuario 
	(nusuario, email, encrypted_password, password, 
  fechacreacion, created_at, updated_at, rol) 
	VALUES ('mind', 'mind@localhost.org', 
	'$2a$10$MAfRJ1Fwd/.2zQzbP8sdPeVFMQ6wY.Ii7cvcWVf./1lkK9.LA9GiG', 
	'', '2014-01-12', '2013-12-24', '2013-12-24', 1);")


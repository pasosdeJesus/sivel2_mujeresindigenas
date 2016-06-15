class AfinaFuentes < ActiveRecord::Migration
  def up
    execute <<-EOF
    UPDATE sip_fuenteprensa SET fechadeshabilitacion='2016-05-05' where id<'100';
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('101', 'VÍCTIMA', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('102', 'FAMILIAR', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('103', 'OTRA PERSONA', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('104', 'MEDIO DE COMUNICACIÓN', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('105', 'REMISIÓN INSTITUCIONAL', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('106', 'REMISIÓN DE OTRO CABILDO', '2016-05-05', '2016-05-05');
    INSERT INTO sip_fuenteprensa (id, nombre, fechacreacion, created_at) VALUES
      ('107', 'OTRO', '2016-05-05', '2016-05-05'); 
    EOF
  end

  def down
    execute <<-EOF
    DELETE FROM sip_fuenteprensa WHERE id>='101' and id<='107'; 
    UPDATE sip_fuenteprensa SET fechadeshabilitacion=NULL where id<'100';
    EOF

  end
end

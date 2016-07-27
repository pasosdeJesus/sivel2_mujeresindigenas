class CambiaConsecuencias < ActiveRecord::Migration
  def up
    create_join_table :consecuenciaindividual, :evento
    create_join_table :consecuenciafamiliar, :evento
    create_join_table :consecuenciafisica, :evento
    create_join_table :evento, :tafectacion
    create_join_table :evento, :tapoyo

    execute <<-SQL
      INSERT INTO consecuenciaindividual_evento 
      (consecuenciaindividual_id, evento_id)
      (SELECT consecuenciaindividual_id, id FROM evento 
      WHERE consecuenciaindividual_id IS NOT NULL);
      
      INSERT INTO consecuenciafamiliar_evento (consecuenciafamiliar_id, evento_id)
      (SELECT consecuenciafamiliar_id, id FROM evento 
      WHERE consecuenciafamiliar_id IS NOT NULL);
  
      INSERT INTO consecuenciafisica_evento (consecuenciafisica_id, evento_id)
      (SELECT consecuenciafisica_id, id FROM evento 
      WHERE consecuenciafisica_id IS NOT NULL);
  
      INSERT INTO evento_tafectacion (evento_id, tafectacion_id)
      (SELECT id, tafectacion_id FROM evento 
      WHERE tafectacion_id IS NOT NULL);
  
      INSERT INTO evento_tapoyo (evento_id, tapoyo_id)
      (SELECT id, tapoyo_id FROM evento 
      WHERE tapoyo_id IS NOT NULL);
    SQL

    remove_column :evento, :consecuenciaindividual_id
    remove_column :evento, :consecuenciafamiliar_id
    remove_column :evento, :consecuenciafisica_id
    remove_column :evento, :tafectacion_id
    remove_column :evento, :tapoyo_id
  end

  def down
    add_column :evento, :consecuenciaindividual_id, :integer
    add_column :evento, :consecuenciafamiliar_id, :integer
    add_column :evento, :consecuenciafisica_id, :integer
    add_column :evento, :tafectacion_id, :integer
    add_column :evento, :tapoyo_id, :integer

    execute <<-SQL
    UPDATE evento SET consecuenciaindividual_id=
        consecuenciaindividual_evento.consecuenciaindividual_id   
    FROM consecuenciaindividual_evento
    WHERE consecuenciaindividual_evento.evento_id=evento.id;

    UPDATE evento SET consecuenciafamiliar_id=
        consecuenciafamiliar_evento.consecuenciafamiliar_id   
    FROM consecuenciafamiliar_evento
    WHERE consecuenciafamiliar_evento.evento_id=evento.id;

    UPDATE evento SET consecuenciafisica_id=
        consecuenciafisica_evento.consecuenciafisica_id   
    FROM consecuenciafisica_evento
    WHERE consecuenciafisica_evento.evento_id=evento.id;

    UPDATE evento SET tafectacion_id = evento_tafectacion.tafectacion_id   
    FROM evento_tafectacion
    WHERE evento_tafectacion.evento_id=evento.id;

    UPDATE evento SET tapoyo_id = evento_tapoyo.tapoyo_id   
    FROM evento_tapoyo
    WHERE evento_tapoyo.evento_id=evento.id;
    SQL

    drop_join_table :consecuenciaindividual, :evento
    drop_join_table :consecuenciafamiliar, :evento
    drop_join_table :consecuenciafisica, :evento
    drop_join_table :evento, :tafectacion
    drop_join_table :evento, :tapoyo
  end
end

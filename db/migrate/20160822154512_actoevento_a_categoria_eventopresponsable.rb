class ActoeventoACategoriaEventopresponsable < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      INSERT INTO eventopresponsable (evento_id, presponsable_id) 
        (SELECT DISTINCT evento_id, presponsable_id FROM actoevento);
      INSERT INTO categoria_eventopresponsable 
        (eventopresponsable_id, categoria_id) 
        (SELECT eventopresponsable.id, actoevento.categoria_id FROM
        eventopresponsable JOIN actoevento 
        ON eventopresponsable.evento_id=actoevento.evento_id AND
        eventopresponsable.presponsable_id=actoevento.presponsable_id);
    SQL
  end
  def down
    execute <<-SQL
       INSERT INTO actoevento
        (evento_id, presponsable_id, categoria_id) 
        (SELECT eventopresponsable.evento_id, presponsable_id, categoria_id
         FROM eventopresponsable JOIN categoria_eventopresponsable
         ON eventopresponsable.id=categoria_eventopresponsable.eventopresponsable_id)
    SQL
  end
end

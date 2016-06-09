class SeparaFechaEvento < ActiveRecord::Migration
  def up
    add_column :evento, :dia, :integer
    add_column :evento, :mes, :integer
    add_column :evento, :anio, :integer
    add_column :evento, :diadenuncia, :integer
    add_column :evento, :mesdenuncia, :integer
    add_column :evento, :aniodenuncia, :integer
    execute <<-SQL
    UPDATE evento SET dia=extract(day from fecha);
    UPDATE evento SET mes=extract(month from fecha);
    UPDATE evento SET anio=extract(year from fecha);

    UPDATE evento SET diadenuncia=extract(day from fechadenuncia);
    UPDATE evento SET mesdenuncia=extract(month from fechadenuncia);
    UPDATE evento SET aniodenuncia=extract(year from fechadenuncia);
    SQL
    remove_column :evento, :fecha
    remove_column :evento, :mesinexacto
    remove_column :evento, :diainexacto
    remove_column :evento, :fechadenuncia
  end

  def down
    add_column :evento, :fecha, :date
    add_column :evento, :mesinexacto, :boolean
    add_column :evento, :diainexacto, :boolean
    add_column :evento, :fechadenuncia, :date
    execute <<-SQL
    UPDATE evento SET fecha=COALESCE(anio, '1970') || '-' || 
      COALESCE(mes, '06') || '-' || COALESCE(dia, '15'),
      fechadenuncia=COALESCE(aniodenuncia, '1970') || '-' || 
      COALESCE(mesdenuncia, '06') || '-' || COALESCE(diadenuncia, '15');
    SQL
    remove_column :evento, :dia, :integer
    remove_column :evento, :mes, :integer
    remove_column :evento, :anio, :integer
    remove_column :evento, :diadenuncia, :integer
    remove_column :evento, :mesdenuncia, :integer
    remove_column :evento, :aniodenuncia, :integer

  end
end

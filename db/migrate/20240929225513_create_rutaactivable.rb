class CreateRutaactivable < ActiveRecord::Migration[7.2]
  include Msip::SqlHelper

  def up
    create_table :rutaactivable do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps
    end
    cambiaCotejacion('rutaactivable', 'nombre', 500, 'es_co_utf_8')
    execute <<-SQL
      ALTER TABLE rutaactivable ADD CONSTRAINT rutaactivable_check
        CHECK (((fechadeshabilitacion IS NULL) OR
          (fechadeshabilitacion >= fechacreacion)));
    SQL
    execute <<-SQL
      INSERT INTO public.rutaactivable (id, nombre, observaciones,
        fechacreacion, fechadeshabilitacion, created_at, updated_at)
      VALUES (1, 'Ruta propia', '',
        '2024-09-29', NULL, '2024-09-30', '2024-09-30');
      INSERT INTO public.rutaactivable (id, nombre, observaciones,
        fechacreacion, fechadeshabilitacion, created_at, updated_at)
      VALUES (2, 'Ruta occidental', '',
        '2024-09-29', NULL, '2024-09-30', '2024-09-30');
      INSERT INTO public.rutaactivable (id, nombre, observaciones,
        fechacreacion, fechadeshabilitacion, created_at, updated_at)
      VALUES (3, 'Ruta interjurisdiccional', '',
        '2024-09-29', NULL, '2024-09-30', '2024-09-30');
      INSERT INTO public.rutaactivable (id, nombre, observaciones,
        fechacreacion, fechadeshabilitacion, created_at, updated_at)
      VALUES (4, 'No se activó ruta', '',
        '2024-09-29', NULL, '2024-09-30', '2024-09-30');

      SELECT pg_catalog.setval('public.rutaactivable_id_seq', 1000, true);
    SQL

  end

  def down
    drop_table :rutaactivable
  end
end

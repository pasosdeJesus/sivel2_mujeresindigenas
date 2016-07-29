class TipoconflictoSocialPoromision < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      ALTER TABLE evento ALTER COLUMN relacionadocon SET DEFAULT 'S';
    SQL
  end
  def down
    execute <<-SQL
      ALTER TABLE evento ALTER COLUMN relacionadocon DROP DEFAULT;
    SQL
  end
end

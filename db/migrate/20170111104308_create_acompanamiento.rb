class CreateAcompanamiento < ActiveRecord::Migration[5.0]
  def change
    create_table :acompanamiento do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 500
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion
      t.timestamp :created_at, null: false
      t.timestamp :updated_at, null: false
    end
  end
end

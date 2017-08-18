class AgregaOficinaPlantilla < ActiveRecord::Migration[5.1]
  def change
    add_column :heb412_gen_plantillahcm, :oficina_id, :integer
    add_foreign_key :heb412_gen_plantillahcm, :sip_oficina,
      column: :oficina_id
  end
end

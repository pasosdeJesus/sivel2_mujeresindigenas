class PrepMsip < ActiveRecord::Migration[7.0]
  include Msip::SqlHelper
  def up
    # Hay un anexo_pkey en sivel2_gen_anexo_caso
    if existe_restricción_en_tabla_pg?(
        "sivel2_gen_anexoactividad_pkey", "sip_anexo")
      renombrar_restricción_pg(
        "sip_anexo", "sivel2_gen_anexoactividad_pkey", "sip_anexo_pkey")
    end
  end

  def down
  end
end

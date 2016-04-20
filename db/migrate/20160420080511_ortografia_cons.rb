class OrtografiaCons < ActiveRecord::Migration
  def change
    rename_column  :sivel2_sjr_casosjr, :concentimientosjr, :consentimientosjr
    rename_column  :sivel2_sjr_casosjr, :concentimientobd, :consentimientobd
  end
end

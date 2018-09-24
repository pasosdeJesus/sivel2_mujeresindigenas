class ValoresPorDefectoEnVarchar < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
    DROP MATERIALIZED VIEW IF EXISTS sivel2_gen_consexpcaso CASCADE;
    SQL
    change_column :evento, :numvecesantes, :string, limit: 1000
    change_column_default :evento, :afectacionotra, ''
    change_column_default :evento, :numvecesantes, ''
    change_column_default :evento, :quereparacion, ''
    change_column_default :evento, :relacionadocon, 'I'
    change_column_default :evento, :sancionadovictimario, 'I'
    change_column_default :evento, :seguimientojudicial, ''
    change_column_default :evento, :seguimientopsicosocial, ''
    change_column_default :evento, :telcontacto, ''
    change_column_default :evento, :valoracionjusticia, 'S'
    
    change_column_default :sivel2_sjr_victimasjr, :resguardores, ''
    change_column_default :sivel2_sjr_victimasjr, :comunidadres, ''
    change_column_default :sivel2_sjr_victimasjr, :comoingresos, ''
    change_column_default :sivel2_sjr_victimasjr, :tipoliderazgo, ''
    change_column_default :sivel2_sjr_victimasjr, :enfermedad, ''
    change_column_default :sivel2_sjr_victimasjr, :ndiscapacidad, ''
    change_column_default :sivel2_sjr_victimasjr, :eps, ''

  end
  def down
  end
end

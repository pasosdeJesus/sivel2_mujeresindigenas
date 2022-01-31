require 'sivel2_sjr/concerns/controllers/conteos_controller'

module Sivel2Sjr
  class ConteosController < ApplicationController

    # autorización en funciones
    
    include Sivel2Sjr::Concerns::Controllers::ConteosController


    def personas_filtros_especializados
      @opsegun =  [
        "", "ESTADO CIVIL", "ETNIA", 
        "MES RECEPCIÓN", "NIVEL ESCOLAR", "RANGO DE EDAD", 
        "SEXO"
      ]
      @titulo_personas = 'Personas atendidas'
      @titulo_personas_fecha = 'Fecha de Recepción'
      @pOficina = escapar_param(params, [:filtro, 'oficina_id'])
    end

    def personas_consulta_final(i, que3, tablas3, where3, qc, gb)
      @coltotales = [i-1, i, i+1]
      que3 << ["", "Victimas"]
      twhere3 = where3 == "" ? "" : "WHERE " + where3
      return "SELECT #{qc}
            SUM(#{personas_cons2}.contacto) AS contacto
            FROM #{tablas3}
            #{twhere3}
            #{gb}"
    end



  end
end

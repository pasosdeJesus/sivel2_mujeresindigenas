require 'sivel2_gen/concerns/controllers/conteos_controller'

module Sivel2Sjr
  class ConteosController < ApplicationController

    # autorización en funciones
    
    include Sivel2Gen::Concerns::Controllers::ConteosController


    def personas_arma_filtros
      p = personas_arma_filtros_sivel2_gen
      p.delete('FILIACIÓN')
      p.delete('ORGANIZACIÓN')
      p.delete('SECTOR SOCIAL')
      p.delete('VÍNCULO CON EL ESTADO')
      p.delete('PROFESIÓN')
      #p.delete('')
      return p
    end

    # Llena variables de clase: @opsegun, @titulo_personas,
    # @titulo_personas_fecha y otras nuevas relacionads con filtros
    # (prefijo p)
    def personas_filtros_especializados
      @titulo_personas = 'Demografía de Víctimas'
      @titulo_personas_fecha = 'Fecha del Caso'
      @filtrosegun = personas_arma_filtros()
      @opsegun =  [''] + @filtrosegun.keys
    end


#    def personas_filtros_especializados
#      @opsegun =  [
#        "AÑO DE NACIMIENTO", "ESTADO CIVIL", "ETNIA", 
#        "MES RECEPCIÓN", "NIVEL ESCOLAR", "RANGO DE EDAD", 
#        "SEXO"
#      ]
#      @titulo_personas = 'Personas atendidas'
#      @titulo_personas_fecha = 'Fecha de Recepción'
#      @pOficina = escapar_param(params, [:filtro, 'oficina_id'])
#    end
#
#    def personas_vista_geo(que3, tablas3, where3)
#      if (@pDepartamento == "1") 
#        que3 << ["departamento_nombre", "Departamento"]
#      end
#      if (@pMunicipio== "1") 
#        que3 << ["municipio_nombre", "Municipio"]
#      end
#
#      return ["CREATE VIEW #{personas_cons2} AS SELECT #{personas_cons1}.*,
#            ubicacion.departamento_id, 
#            departamento.deplocal_cod AS departamento_divipola,
#            departamento.nombre AS departamento_nombre, 
#            ubicacion.municipio_id, 
#            municipio.munlocal_cod AS municipio_divipola,
#            municipio.nombre AS municipio_nombre, 
#            ubicacion.centropoblado_id, 
#            centropoblado.cplocal_cod AS centropoblado_divipola,
#            centropoblado.nombre AS centropoblado_nombre
#            FROM
#                    #{personas_cons1} JOIN sivel2_gen_caso AS caso ON
#              (#{personas_cons1}.caso_id = caso.id) 
#            LEFT JOIN msip_ubicacion AS ubicacion ON
#              (caso.ubicacion_id = ubicacion.id) 
#            LEFT JOIN msip_departamento AS departamento ON 
#              (ubicacion.departamento_id=departamento.id) 
#            LEFT JOIN msip_municipio AS municipio ON 
#              (ubicacion.municipio_id=municipio.id)
#            LEFT JOIN msip_centropoblado AS centropoblado ON 
#              (ubicacion.centropoblado_id=centropoblado.id)
#            GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15", que3, tablas3, where3]
#    end

#    def personas_consulta_final(i, que3, tablas3, where3, qc, gb)
#      @coltotales = [i-1, i, i+1]
#      que3 << ["", "Victimas"]
#      twhere3 = where3 == "" ? "" : "WHERE " + where3
#      return "SELECT #{qc}
#            SUM(#{personas_cons2}.contacto) AS contacto
#            FROM #{tablas3}
#            #{twhere3}
#            #{gb}"
#    end
#


  end
end

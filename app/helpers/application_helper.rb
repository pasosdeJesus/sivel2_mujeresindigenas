module ApplicationHelper

  ANTEQUIENMEDIDAS = [
    ['CABILDO', :C],
    ['ESTADO', :E],
    ['ESTADO Y CABILDO', :Y],
    ['NINGUNO', :N],
    ['SIN INFORMACIÓN', :I]
  ]

  DENUNCIAANTE = [ 
    ['AMBOS SISTEMAS', :A],
    ['ORDINARIA', :O], 
    ['PROPIA', :P], 
    ['SIN INFORMACIÓN', :I]
  ]

  DIASEMANA = [
    [:DOMINGO, 0], 
    [:LUNES, 1], 
    [:MARTES, 2], 
    [:MIERCOLES, 3],
    [:JUEVES, 4], 
    [:VIERNES, 5], 
    [:SABADO, 6] 
  ]
  
  LIDERAZGO = [
    ['EN ZONAS DE CONFLICTO', :Z],
    ['NO', :N],
    ['SI', :S], 
    ['SIN INFORMACIÓN', :I]
  ]

  MESES= [
    ["ENERO", 1], 
    ["FEBRERO", 2], 
    ["MARZO", 3], 
    ["ABRIL", 4], 
    ["MAYO", 5], 
    ["JUNIO", 6], 
    ["JULIO", 7], 
    ["AGOSTO", 8], 
    ["SEPTIEMBRE", 9], 
    ["OCTUBRE", 10], 
    ["NOVIEMBRE", 11], 
    ["DICIEMBRE", 12]
  ] 

  NOSI = [
    [:NO, :N],
    [:SI, :S], 
    ["SIN INFORMACIÓN", :I]
  ]

  SEXO = [
    ["SIN INFORMACIÓN", :S], 
    ["MUJER", :F], 
    ["HOMBRE", :M]
  ] 

  SISTEMASALUD = [
    ['PROPIO', :P], 
    ['ORDINARIO', :O], 
    ['SIN INFORMACIÓN', :I]
  ]

  TIPOCONFLICTO = [ 
    ['ARMADO', :A], 
    ['SIN INFORMACIÓN', :I],
    ['SOCIAL', :S] 
  ]

  VALORACIONBRM= [
      ['SIN INFORMACIÓN', :S],
      ['BUENA', :B],
      ['REGULAR', :R],
      ['MALA', :M] 
  ]

  def self.s_guiones(m)
    if m == 'SIN INFORMACIÓN' 
      return ' - -'
    end 
    m
  end

  def self.etiqueta(a, l, sininfoguion=false)
    return '' if l == ''
    res = a.select do |r|
      r[1].to_s == l.to_s
    end
    if res.length == 0
      return "ERROR-CON-#{a}-Y-#{l}-FAVOR-REPORTAR"
    end
    if sininfoguion
      s_guiones(res[0][0])
    else
      res[0][0]
    end
  end

end

# encoding: UTF-8

class Ability < Sivel2Sjr::Ability

  @@tablasbasicas = Sip::Ability::BASICAS_PROPIAS + 
    Sivel2Gen::Ability::BASICAS_PROPIAS + 
    Sivel2Sjr::Ability::BASICAS_PROPIAS + 
    BASICAS_PROPIAS  - [
      ['Sivel2Gen', 'filiacion'],
      ['Sivel2Gen', 'frontera'],
      ['Sivel2Gen', 'intervalo'],
      ['Sivel2Gen', 'organizacion'],
      ['Sivel2Gen', 'pconsolidado'],
      ['Sivel2Gen', 'region'],
      ['Sivel2Gen', 'sectorsocial'],
      ['Sivel2Gen', 'vinculoestado'],
      ['Sivel2Sjr', 'acreditacion'],
      ['Sivel2Sjr', 'ayudaestado'],
      ['Sivel2Sjr', 'clasifdesp'],
      ['Sivel2Sjr', 'comosupo'],
      ['Sivel2Sjr', 'inclusion'],
      ['Sivel2Sjr', 'modalidadtierra'],
      ['Sivel2Sjr', 'declaroante'],
      ['Sivel2Sjr', 'derecho'],
      ['Sivel2Sjr', 'motivosjr'],
      ['Sivel2Sjr', 'personadesea'],
      ['Sivel2Sjr', 'progestado'],
      ['Sivel2Sjr', 'proteccion'],
      ['Sivel2Sjr', 'tipodesp']
  ]
end


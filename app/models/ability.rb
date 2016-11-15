# encoding: UTF-8

class Ability < Sivel2Sjr::Ability

  ROLADMIN  = 1
  ROLCOOR   = 4
  ROLANALI  = 5

  ROLES = [
    ["Administrador", ROLADMIN], 
    [nil, nil], 
    [nil, nil], 
    ["Administrador oficina", ROLCOOR], 
    ["Analista", ROLANALI], 
  ]

  BASICAS_PROPIAS = [
    ['', 'relacionprvic'],
    ['', 'estadocaso'],
    ['', 'consecuenciafamiliar'],
    ['', 'consecuenciafisica'],
    ['', 'consecuenciaindividual'],
	  ['', 'educacionpropia'],
    ['', 'motivonodenuncia'],
	  ['', 'religion'],
	  ['', 'tafectacion'],
	  ['', 'tapoyo']
  ]

  def tablasbasicas 
    Sip::Ability::BASICAS_PROPIAS + 
      Sivel2Gen::Ability::BASICAS_PROPIAS + 
      Sivel2Sjr::Ability::BASICAS_PROPIAS + 
      BASICAS_PROPIAS  - [
        ['Sivel2Gen', 'filiacion'],
        ['Sivel2Gen', 'iglesia'],
        ['Sivel2Gen', 'intervalo'],
        ['Sivel2Gen', 'frontera'],
        ['Sivel2Gen', 'intervalo'],
        ['Sivel2Gen', 'organizacion'],
        ['Sivel2Gen', 'pconsolidado'],
        ['Sivel2Gen', 'region'],
        ['Sivel2Gen', 'sectorsocial'],
        ['Sivel2Gen', 'vinculoestado'],
        ['Sivel2Sjr', 'acreditacion'],
        ['Sivel2Sjr', 'aslegal'],
        ['Sivel2Sjr', 'ayudasjr'],
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
        ['Sivel2Sjr', 'statusmigratorio'],
        ['Sivel2Sjr', 'tipodesp']
      ]
  end

  def initialize(usuario = nil)
    can :nuevo, ::Evento
    can :contar, Sip::Ubicacion
    can :manage, Sivel2Gen::GruposperController


    can :read, [Sip::Pais, Sip::Departamento, Sip::Municipio, Sip::Clase]
    if !usuario || usuario.fechadeshabilitacion
      return
    end
    can :contar, Sivel2Gen::Caso
    can :contar, Sip::Ubicacion
    can :buscar, Sivel2Gen::Caso
    can :lista, Sivel2Gen::Caso
    can :descarga_anexo, Sip::Anexo
    can :nuevo, Sivel2Sjr::Desplazamiento
    can :nuevo, Sivel2Sjr::Respuesta
    can :nuevo, Sip::Ubicacion
    can :nuevo, Sivel2Gen::Presponsable
    can :nuevo, Sivel2Gen::Victima
    if !usuario.nil? && !usuario.rol.nil? then
      if usuario.oficina && usuario.oficina.id  == 104
        can :edit, :casosacin
      end
      if usuario.oficina && usuario.oficina.id  == 103
        can :edit, :casosoik
      end
      case usuario.rol 
      when Ability::ROLANALI
        can :manage, ::Evento
        can :read, Sivel2Gen::Caso
        can :new, Sivel2Gen::Caso
        can [:update, :create, :destroy], Sivel2Gen::Caso, 
          casosjr: { oficina_id: usuario.oficina_id }
        can :read, Cor1440Gen::Informe
        can :read, Cor1440Gen::Actividad
        can :new, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :manage, Sivel2Gen::Acto
        can :manage, Sip::Persona
      when Ability::ROLCOOR
        can :manage, ::Evento
        can :read, Sivel2Gen::Caso
        can :new, Sivel2Gen::Caso
        can [:update, :create, :destroy, :poneretcomp], Sivel2Gen::Caso, 
          casosjr: { oficina_id: usuario.oficina_id }
        can :manage, Cor1440Gen::Informe
        can :read, Cor1440Gen::Actividad
        can :new, Cor1440Gen::Actividad
        can [:update, :create, :destroy], Cor1440Gen::Actividad, 
          oficina: { id: usuario.oficina_id}
        can :manage, Sivel2Gen::Acto
        can :manage, Sip::Persona
        can :new, Usuario
        can [:read, :manage], Usuario, oficina: { id: usuario.oficina_id}
      when Ability::ROLADMIN, Ability::ROLDIR
        can :manage, ::Evento
        can :edit, :casosacin
        can :edit, :casosoik
        can :manage, Sivel2Gen::Caso
        can :manage, Cor1440Gen::Actividad
        can :manage, Cor1440Gen::Informe
        can :manage, Sivel2Gen::Acto
        can :manage, Sip::Persona
        can :manage, Usuario
        can :manage, :tablasbasicas
        tablasbasicas.each do |t|
          c = Ability.tb_clase(t)
          can :manage, c
        end
      end
    end

  end # initialize

end # class


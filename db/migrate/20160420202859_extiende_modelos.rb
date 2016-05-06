class ExtiendeModelos < ActiveRecord::Migration
  def change

    # Los siguientes campos casi boolenos: S, N, I -> SIN INFORMACIÓN
    add_column :sivel2_sjr_casosjr, :consentimiento, :string, limit: 1, default: :I
    add_column :sivel2_sjr_victimasjr, :tienetierra, :string, limit: 1, default: :I
    add_column :sivel2_sjr_victimasjr, :incluidoruv, :string, limit: 1, default: :I
    add_column :sivel2_sjr_victimasjr, :cabezahogar, :string, limit: 1, default: :I
    add_column :evento, :situacionriesgo, :string, limit: 1, default: :I
    add_column :evento, :solicitomedidas, :string, limit: 1, default: :I
    add_column :evento, :denuncia, :string, limit: 1, default: :I
    add_column :evento, :testigo, :string, limit: 1, default: :I
    add_column :evento, :afectacionotra, :string, limit: 1, default: :I
    add_column :evento, :quisieradenunciar, :string, limit: 1, default: :I
    add_column :evento, :recibidoreparacion, :string, limit: 1, default: :I
    
    # D -> Documentado, A -> Acompañado, R -> Registrado
    add_column :sivel2_sjr_casosjr, :estadocaso, :string, limit: 1, default: :A
    # J -> Jurídico, P -> Psicosocial, C -> Cultural, N -> Ninguno
    add_column :sivel2_sjr_casosjr, :tipoacomp, :string, limit: 1, default: :J

    # P -> Propio, O -> Ordinario, N -> Ninguno, I -> SIN INFORMACIÓN
    add_column :sivel2_sjr_victimasjr, :sistemasalud, :string, limit: 1, default: :I

    # A -> Armado, S -> Social
    add_column :sivel2_sjr_victimasjr, :vicconflicto, :string, limit: 1, default: :A

    # S, N, Z -> En Zonas de Conflicto, I -> SIN INFORMACIÓN
    add_column :sivel2_sjr_victimasjr, :liderazgo, :string, limit: 1, default: :I

    # O -> Ordinaria, P -> Propia, A -> Ambos sistemas, I -> SIN INFORMACIÓN
    add_column :evento, :denunciaante, :string, limit: 1, default: :I
    
    # B -> Buena, M -> Mala, R -> Regular
    add_column :evento, :valoracionjusticia, :string, limit: 1, default: :R

    add_column :sivel2_sjr_victimasjr, :residencia, :string, limit: 5000, default: ''
    add_column :sivel2_sjr_victimasjr, :areatierra, :integer
    add_column :sivel2_sjr_victimasjr, :comotierra, :string, limit: 5000, default: ''
    
    add_column :sivel2_sjr_victimasjr, :resguardonac, :string, limit: 500, default: ''
    add_column :sivel2_sjr_victimasjr, :comunidadnac, :string, limit: 500, default: ''
    add_column :sivel2_sjr_victimasjr, :organizacionfilial, :string, limit: 500, default: ''
    
    add_column :evento, :resguardo, :string, limit: 500, default: ''
    add_column :evento, :comunidad, :string, limit: 500, default: ''
    add_column :evento, :medidasrecibidas, :string, limit: 5000, default: ''
    add_column :evento, :brindadaproteccion, :string, limit: 5000, default: ''
    add_column :evento, :fechadenuncia, :date
    add_column :evento, :descripcionafectacion, :string, limit: 5000, default: ''
    add_column :evento, :relacionprespvic, :string, limit: 500, default: '', default: ''
    add_column :evento, :numvecesantes, :integer
    add_column :evento, :actividadesdejadas, :string, limit: 5000, default: ''
    add_column :evento, :reaccionfamiliaycomunidad, :string, limit: 5000, default: ''
    add_column :evento, :avancescaso, :string, limit: 5000, default: ''
    add_column :evento, :etapaproceso, :string, limit: 500, default: ''
    add_column :evento, :compromisosadquiridos, :string, limit: 5000, default: ''
    add_column :evento, :observaciones, :string, limit: 5000, default: ''
    add_column :evento, :acompnecesita, :string, limit: 5000, default: ''
  end
end

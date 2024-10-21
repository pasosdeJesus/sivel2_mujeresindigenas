require 'sivel2_gen/concerns/models/acto'

module Sivel2Gen
  # Acto de violencia contra una persona, basado en modelo de datos
  # "Who did what to whom" de HURIDOCS. Consta de: caso, presunto responsable,
  # categoría de violencia, y persona (la víctima se identifica por el caso
  # y la persona).
  class Acto < ActiveRecord::Base
    include Sivel2Gen::Concerns::Models::Acto

    has_one :actosjr, class_name: 'Sivel2Sjr::Actosjr',
      foreign_key: "acto_id", dependent: :delete, inverse_of: :acto
    accepts_nested_attributes_for :actosjr

  end
end


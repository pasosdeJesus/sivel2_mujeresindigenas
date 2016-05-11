# encoding: UTF-8
#
require 'sivel2_gen/concerns/models/categoria'

module Sivel2Gen
  class Categoria < ActiveRecord::Base
    include Sivel2Gen::Concerns::Models::Categoria

    has_many :actoevento, class_name: '::Actoevento',
      foreign_key: "categoria_id"#, validate:true

  end
end

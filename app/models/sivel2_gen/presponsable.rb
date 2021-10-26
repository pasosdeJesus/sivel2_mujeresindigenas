require 'sivel2_gen/concerns/models/presponsable'

module Sivel2Gen
  class Presponsable < ActiveRecord::Base
    include Sivel2Gen::Concerns::Models::Presponsable

    has_many :actoevento, class_name: '::Actoevento',
      foreign_key: "presponsable_id"#, validate:true
  end
end

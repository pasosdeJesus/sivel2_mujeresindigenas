# encoding: UTF-8
require 'date'

class ActoseventoController < ApplicationController
  load_and_authorize_resource class: ::Evento

  def eliminar
    actoevento = Actoevento.where(id: params[:id_actoevento].to_i).take
    if actoevento
      @evento = actoevento.evento
      actoevento.destroy!
    end
    respond_to do |format|
      format.js { render nothing: true }
    end
  end

end

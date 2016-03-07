# encoding: UTF-8
require 'date'

class EventosController < ApplicationController
  load_and_authorize_resource class: ::Evento

  # Crea un nuevo evento para el caso que recibe por parametro 
  # params[:caso_id].  Pone valores simples en los campos requeridos
  def nuevo
    if params[:caso_id].nil?
      respond_to do |format|
        format.html { render inline: 'Falta identificacion del caso' }
      end
    else
      @evento = Evento.new
      cid = params[:caso_id].to_i
      @evento.caso_id = cid
      @caso = @evento.caso
      @caso.current_usuario = current_usuario
      if @evento.save
        h=@evento.as_json
        h['evento'] = @evento.id
        respond_to do |format|
          format.js { render text: h }
          format.json { render json: h, status: :created }
          format.html { render inline: h.to_s }
        end
      else
        respond_to do |format|
          format.html { render action: "error" }
          format.json { 
            render json: @evento.errors, 
            status: :unprocessable_entity
          }
        end
      end
    end
  end
end

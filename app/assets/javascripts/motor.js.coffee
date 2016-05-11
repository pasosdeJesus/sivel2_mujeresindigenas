# vim: set expandtab tabstop=2 shiftwidth=2 fileencoding=utf-8:

@mind_procesa_eliminarae = false

@mind_prepara_eventos_comunes = (root) ->

  # Elimina actoevento
  $(document).on('click', 'a.eliminaractoevento[href^="#"]', (e) ->
    e.preventDefault()
    e.stopPropagation()
    if (!@mind_procesa_eliminarae)
      @mind_procesa_eliminarae = true
      f = $('form')
      d = "id_actoevento=" + $(this).attr('data-eliminaractoevento')
      a = root.puntomontaje + 'actosevento/eliminar'
      $.ajax(url: a, data: d, dataType: "script").fail( (jqXHR, texto) ->
        alert("Error con ajax " + texto)
      ).done( (e) ->
        @mind_procesa_eliminarae = false
      )
  )


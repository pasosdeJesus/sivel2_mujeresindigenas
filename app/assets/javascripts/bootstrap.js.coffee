jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()

$(document).on 'ready page:load',  -> 

  $(document).on('click', '#vertical', (e) ->
  )



// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require sip/motor
//= require heb412_gen/motor
//= require sivel2_gen/motor
//= require sivel2_sjr/motor
//= require chosen-jquery
//= require_tree .

$(document).on('turbolinks:load ready page:load', function() {
  var root;
  root = typeof exports !== "undefined" && exports !== null ? 
	  exports : window;
  root.campo_fecha_ref_edad = 'caso_casosjr_attributes_fecharec'
  sip_prepara_eventos_comunes(root);
  heb412_gen_prepara_eventos_comunes(root);
  sivel2_gen_prepara_eventos_comunes(root,'antecedentes/causas');
  sivel2_sjr_prepara_eventos_comunes(root);
  sivel2_sjr_prepara_eventos_unicos(root);

  $('#caso_casosjr_attributes_fecharec').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true,
    todayHighlight: true,
    language: 'es'
  }).on('changeDate', function (ev) {
    //  Cambiar edades
      $('[id^=caso_victima_attributes][id$=persona_attributes_anionac]').change()
  }
  )

  $(document).on('change', 'select[id$=_departamentores_id]', function(e) {
    llena_municipio($(this), root);
  })

  $('.chosen-select').chosen({
	  allow_single_deselect: true,
	  no_results_text: 'No hay resultados',
	  placeholder_text_multiple: 'Elije una o varias categorias de violencia',
	  width: '100%'
  })

  $(document).on('cocoon:after-insert', function (e) {
	  $('.chosen-select').chosen({
		  allow_single_deselect: true,
		  no_results_text: 'No hay resultados',
	  	  placeholder_text_multiple: 'Elije una o varias categorias de violencia',
		  width: '100%'
	  })
  })

  $(document).on('change', '#mostrarprivados', function(e) {
	  if (this.checked) {
		  $('.privado').show()
	  } else {
		  $('.privado').hide()
	  }
  })
});


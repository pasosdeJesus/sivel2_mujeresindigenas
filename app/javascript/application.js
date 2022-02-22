/* eslint no-console:0 */

console.log('Hola Mundo desde ESM')



import Rails from "@rails/ujs";
import "@hotwired/turbo-rails";
Rails.start();
window.Rails = Rails

import 'gridstack'
import './jquery'
import '../../vendedor/recursos/javascripts/jquery-ui'

import 'popper.js'              // Dialogos emergentes usados por bootstrap
import * as bootstrap from 'bootstrap'              // Maquetacion y elementos de diseño
import 'chosen-js/chosen.jquery';       // Cuadros de seleccion potenciados
import 'bootstrap-datepicker'
import 'bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js'

// Leaflet
var L = require('leaflet');
var mc= require('leaflet.markercluster');

import {AutocompletaAjaxExpreg} from '@pasosdejesus/autocompleta_ajax'
window.AutocompletaAjaxExpreg = AutocompletaAjaxExpreg

let esperarRecursosSprocketsYDocumento = function (resolver) {
  if (typeof window.puntomontaje == 'undefined') {
    setTimeout(esperarRecursosSprocketsYDocumento, 100, resolver)
    return false
  }
  if (document.readyState !== 'complete') {
    setTimeout(esperarRecursosSprocketsYDocumento, 100, resolver)
    return false
  }
  resolver("Recursos manejados con sprockets cargados y documento presentado en navegador")
    return true
  }

let promesaRecursosSprocketsYDocumento = new Promise((resolver, rechazar) => {
  esperarRecursosSprocketsYDocumento(resolver)
})

promesaRecursosSprocketsYDocumento.then((mensaje) => {
  console.log(mensaje)
  var root = window;

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
})


document.addEventListener('turbo:load', (e) => {
 /* Lo que debe ejecutarse cada vez que turbo cargue una página,
 * tener cuidado porque puede dispararse el evento turbo varias
 * veces consecutivas al cargar una página.
 */
  
  console.log('Escuchador turbo:load')

  sip_ejecutarAlCargarPagina(window)
})

import "./controllers"

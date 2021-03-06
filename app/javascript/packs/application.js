// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import flatpickr from "flatpickr";

initMapbox();
initAutocomplete();

document.addEventListener('turbolinks:load', () => {

  if (document.querySelector('#map')) initMapbox();
  if (document.querySelector('#flat_location')) initAutocomplete();
  if (document.querySelector("#flatpickr")) flatpickr("#flatpickr", {});

  if (document.querySelector('#sweet-alert-demo')) {
    initSweetalert('#sweet-alert-demo', {
      title: "Thank you for your booking",
      buttons: false,
      timer: 12000,
      text: "Check the status of your booking on your dashboard",
      icon: "success"
    });
  }
})

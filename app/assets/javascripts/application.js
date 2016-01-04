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
// about supported directives. quite turbolinks
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require lodash.compat.min
//= require breakpoints
//= require respond.min
//= require jquery.cookie.min
//= require jquery.slimscroll.min
//= require jquery.slimscroll.horizontal.min
//= require jquery.sparkline.min
//= require jquery.flot.min
//= require jquery.flot.tooltip.min
//= require jquery.flot.resize.min
//= require jquery.flot.time.min
//= require jquery.flot.growraf.min
//= require jquery.noty
//= require top
//= require default
//= require jquery.uniform.min
//= require select2.min
//= require app
//= require plugins.js
//= require plugins.form-components

//= require_tree .


$(document).ready(function(){
  "use strict";

  App.init(); // Init layout and core plugins
  Plugins.init(); // Init all plugins
  FormComponents.init(); // Init all form-specific plugins
});

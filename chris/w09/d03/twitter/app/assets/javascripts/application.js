// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery_ujs
//= require turbolinks
//= require handlebars.runtime
//= require_tree ./templates
//= require_tree ./models
//= require_tree ./collections
//= require_tree ./views
//= require_tree .

var statusesCollection = new Statuses(); //coming from the collections

var timelineView = new TimelineView({ collection: statusesCollection });  ///parse in the collection

$("body").append(timelineView.el);  //appended the timelineView to the body of the HTML
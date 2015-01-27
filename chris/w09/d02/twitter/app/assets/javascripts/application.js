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
//= require_tree .


var statusCollection = new Statuses();

statusCollection.on("add", function(status){   //a model gets passed in where status is located
  $("body").append(
      JST['status'](             //reference from status.hbs
        status.toJSON()          // model to javascript object that's JSON compatible
      )  
  );
});

statusCollection.fetch();       //fetch data from server


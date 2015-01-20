var Status = Backbone.Model.extend({  //extend the backbone model with whatever you want inside here. Like prototype in JS
  urlRoot: '/statuses',

  defaults: {
    username: "Anon",
    content: "Free burrito"
  }

});
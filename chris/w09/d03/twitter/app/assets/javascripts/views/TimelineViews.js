var TimelineView = Backbone.View.extend({
  tagName: "div",  //default as div
  className: "timeline",  //defines the class
  template: JST['statuses/timeline'],  //asign to template property
  
  initialize: function(){           //backbone constructor function
      this.collection.fetch();      //grabs the data to render
      this.collection.on("sync", this.render, this)    //when this.render is called, second this tells 'this' to run in TimelineView's context
  },

  render: function(){   //gets what's on the screen
    this.$el.html(     //references elements created (tagName, className)
      this.template({
        statuses: this.collection.toJSON()   //collection parsed in
      })
    );
  }
});
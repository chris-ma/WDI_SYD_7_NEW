var TimelineView = Backbone.View.extend({
  tagName: "div",  //default as div
  className: "timeline",  //defines the class

  initialize: function(){           //backbone constructor function
      this.collection.fetch();      //grabs the data to render
      this.collection.on("add", this.addStatus, this);    //when this.render is called, second this tells 'this' to run in TimelineView's context
  },

  addStatus: function(status) {
      var statusView = new StatusView({ model: status});
      this.$el.append(statusView.render().el);          //$el= timelineView elements .el= statusview elements 
  }
});
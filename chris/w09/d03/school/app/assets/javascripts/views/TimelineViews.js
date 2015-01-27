var TimelineView = Backbone.View.extend({

  tagName: "div",
  className: "timeline",

  initialize: function(){
    this.collection.fetch();
    this.collection.on("add", this.addLearner, this);
  },

  addLearner: function(learner){
    var learnerView = new LearnerView({ model: learner});
    this.$el.append(learnerView.render().el);
  }
});